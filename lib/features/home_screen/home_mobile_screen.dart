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
import 'package:edwres_app/data/repository/repository.dart';
import 'package:edwres_app/features/sections/sections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeMobileScreen extends StatelessWidget {
  final bool isWebsite;

  const HomeMobileScreen({super.key, required this.isWebsite});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AssessmentBloc()..add(AssessmentEvent.fetch()),
        ),
        BlocProvider(
          create: (context) => NewsBloc(context.read<NewsRepository>()),
        ),
        BlocProvider(
          create: (context) =>
              EntrepreneurshipBloc(context.read<EntrepreneurshipRepository>()),
        ),

        BlocProvider(create: (context) => RssNewsBloc(RssNewsRepository())),
        BlocProvider(create: (context) => GuestbookBloc(GuestbookRepository())),
        BlocProvider(
          create: (context) =>
              DetectionHistoryBloc(DetectionHistoryRepository()),
        ),
      ],
      child: HomeMobileScreenContent(isWebsite: isWebsite),
    );
  }
}

class HomeMobileScreenContent extends StatefulWidget {
  final bool isWebsite;

  const HomeMobileScreenContent({super.key, required this.isWebsite});

  @override
  State<HomeMobileScreenContent> createState() =>
      _HomeMobileScreenContentState();
}

class _HomeMobileScreenContentState extends State<HomeMobileScreenContent> {
  final GlobalKey aboutSectionKey = GlobalKey();
  @override
  void initState() {
    super.initState();

    if (!widget.isWebsite && SessionManager.isLogin.value) {
      context.read<DetectionHistoryBloc>().add(
        DetectionHistoryEvent.fetch(idUser: SessionManager.idUser),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: openWhatsapp,
        backgroundColor: AppColor.green,
        child: const FaIcon(
          FontAwesomeIcons.whatsapp,
          color: AppColor.white,
          size: 32,
        ),
      ),

      drawer: Drawer(
        backgroundColor: AppColor.primary,
        child: AppDrawer(isWebsite: widget.isWebsite),
      ),

      body: Column(
        children: [
          const Navbar(),

          Expanded(
            child: SingleChildScrollView(
              child: widget.isWebsite ? _buildWebsite() : _buildUserDashboard(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWebsite() {
    return Column(
      children: [
        HeroSection(
          onLearnMorePressed: () {
            Scrollable.ensureVisible(
              aboutSectionKey.currentContext!,
              duration: const Duration(milliseconds: 700),
              curve: Curves.easeInOut,
            );
          },
        ),
        MitraSection(),
        AboutSection(key: aboutSectionKey),
        EntrepreneurshipSection(),
        NewsSection(),
        RssNewsSection(),
        GuestBookSection(),
        FooterSection(),
      ],
    );
  }

  Widget _buildUserDashboard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dashboard User',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 8),

          WelcomeCard(),

          const SizedBox(height: 8.0),

          BlocBuilder<DetectionHistoryBloc, DetectionHistoryState>(
            builder: (context, state) {
              if (state.status.isLoading) {
                return Center(child: CircularProgressIndicator(strokeWidth: 2));
              }

              if (state.status.isLoaded && state.data != null) {
                return HistoryCard(data: state.data ?? []);
              }

              return Row(
                children: [
                  Icon(Icons.refresh),
                  const SizedBox(width: 4),
                  InkWell(
                    child: Text('Ulangi'),
                    onTap: () {
                      context.read<DetectionHistoryBloc>().add(
                        DetectionHistoryEvent.fetch(
                          idUser: SessionManager.idUser,
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 16.0),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.consultation);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(AppColor.secondary),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              child: Text('Mulai Konsultasi', style: AppTextStyle.titleMd),
            ),
          ),
        ],
      ),
    );
  }
}
