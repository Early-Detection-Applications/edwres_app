// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:edwres_app/app/app.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class ConsultationScreen extends StatelessWidget {
  const ConsultationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ConsultationBloc(IndicatorRepository(), DiagnosisRepository())
                ..add(const ConsultationEvent.fetch()),
        ),
      ],
      child: const ConsultationScreenContent(),
    );
  }
}

class ConsultationScreenContent extends StatefulWidget {
  const ConsultationScreenContent({super.key});

  @override
  State<ConsultationScreenContent> createState() =>
      _ConsultationScreenContentState();
}

class _ConsultationScreenContentState extends State<ConsultationScreenContent> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ConsultationBloc, ConsultationState>(
      listenWhen: (previous, current) =>
          previous.status != current.status ||
          previous.pdfUrl != current.pdfUrl,
      listener: (context, state) async {
        if (state.status == ConsultationStatus.submitted) {
          final diagnosis = state.diagnosis;

          if (diagnosis == null) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Data hasil diagnosis tidak tersedia.'),
              ),
            );
            return;
          }

          context.pushNamed(AppRoutes.consultationResult, extra: diagnosis);
        }

        // PDF sedang diminta
        if (state.status == ConsultationStatus.downloadingPdf) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Menyiapkan laporan PDF...')),
          );
        }
        if (state.status == ConsultationStatus.pdfReady &&
            state.pdfUrl != null) {
          final uri = Uri.parse(state.pdfUrl!);

          try {
            final launched = await launchUrl(
              uri,
              mode: LaunchMode.externalApplication,
            );

            if (!launched && context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Tidak dapat membuka PDF.')),
              );
            }
          } catch (e) {
            if (context.mounted) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Gagal membuka PDF: $e')));
            }
          }
        }

        if (state.status == ConsultationStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.error.isNotEmpty
                    ? state.error
                    : 'Terjadi kesalahan saat melakukan diagnosis.',
              ),
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: openWhatsapp,
          backgroundColor: AppColor.green,
          child: const FaIcon(
            FontAwesomeIcons.whatsapp,
            color: AppColor.white,
            size: 32,
          ),
        ),
        drawer: const Drawer(
          backgroundColor: AppColor.primary,
          child: AppDrawer(),
        ),
        body: DefaultTabController(
          length: 4,
          child: Container(
            color: AppColor.primary400,
            child: Column(
              children: [
                const Navbar(),

                Expanded(
                  child: NestedScrollView(
                    headerSliverBuilder: (context, innerBoxIsScrolled) {
                      return [
                        const SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: ConsultationCard(),
                          ),
                        ),

                        SliverPersistentHeader(
                          pinned: true,
                          delegate: _TabBarDelegate(
                            const ConsultationSectionTabBar(),
                          ),
                        ),
                      ];
                    },

                    body: BlocBuilder<ConsultationBloc, ConsultationState>(
                      builder: (context, state) {
                        switch (state.status) {
                          case ConsultationStatus.loading:
                            return const Center(
                              child: CircularProgressIndicator(),
                            );

                          case ConsultationStatus.submitting:
                            return const Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircularProgressIndicator(),
                                  SizedBox(height: 16),
                                  Text(
                                    'Sedang menganalisis jawaban...',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            );

                          case ConsultationStatus.error:
                            return Center(
                              child: Text(
                                state.error,
                                style: const TextStyle(color: Colors.white),
                              ),
                            );

                          case ConsultationStatus.loaded:
                            return const ConsultationTabContent();

                          default:
                            return const SizedBox();
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: AppColor.primary,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      context.read<ConsultationBloc>().add(
                        const ConsultationEvent.reset(),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xFF1F5B68),
                      side: BorderSide(
                        color: Colors.white.withValues(alpha: 0.12),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.arrowsRotate,
                            color: Colors.white,
                            size: 14,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Reset Jawaban',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      final bloc = context.read<ConsultationBloc>();

                      if (bloc.state.selectedQuestionIds.length < 2) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Pilih minimal 2 indikator untuk melakukan diagnosis.',
                            ),
                          ),
                        );
                        return;
                      }

                      final idUser = SessionManager.idUser;

                      if (idUser == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'User belum teridentifikasi. Silakan login kembali.',
                            ),
                          ),
                        );
                        return;
                      }

                      bloc.add(
                        ConsultationEvent.submit(idUser: idUser.toString()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.secondary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 8.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.stethoscope,
                            size: 14,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Diagnosis Sekarang',
                            style: AppTextStyle.bodyMd.copyWith(
                              color: AppColor.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  const _TabBarDelegate(this.child);

  @override
  double get minExtent => 60;

  @override
  double get maxExtent => 60;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: AppColor.primary400, child: child);
  }

  @override
  bool shouldRebuild(covariant _TabBarDelegate oldDelegate) {
    return false;
  }
}
