// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0

import 'package:edwres_app/app/app.dart';
import 'package:edwres_app/core/blocs/referensi_hasil_penelitian/referensi_hasil_penelitian.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/data/data.dart';
import 'package:edwres_app/data/repository/referensi_hasil_penelitian_repository.dart';
import 'package:edwres_app/models/referensi_hasil_penelitian/referensi_hasil_penelitian_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class JournalReferenceScreen extends StatelessWidget {
  const JournalReferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ReferensiHasilPenelitianBloc(
        ReferensiHasilPenelitianRepository(),
      )..add(const ReferensiHasilPenelitianEvent.fetch(page: 1, perPage: 9)),
      child: const _JournalReferenceContent(),
    );
  }
}

class _JournalReferenceContent extends StatefulWidget {
  const _JournalReferenceContent();

  @override
  State<_JournalReferenceContent> createState() =>
      _JournalReferenceContentState();
}

class _JournalReferenceContentState extends State<_JournalReferenceContent> {
  static const int _itemsPerPage = 9;

  void _fetchPage(int page) {
    context.read<ReferensiHasilPenelitianBloc>().add(
      ReferensiHasilPenelitianEvent.fetch(page: page, perPage: _itemsPerPage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary400,

      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppColor.green,
        onPressed: openWhatsapp,
        child: const FaIcon(
          FontAwesomeIcons.whatsapp,
          color: AppColor.white,
          size: 30,
        ),
      ),

      drawer: const Drawer(
        backgroundColor: AppColor.primary,
        child: AppDrawer(),
      ),

      body: Column(
        children: [
          const Navbar(),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Literasi',
                    style: AppTextStyle.bodyLg.copyWith(
                      color: AppColor.secondary,
                    ),
                  ),

                  const SizedBox(height: 2),

                  Text(
                    'Referensi Hasil Penelitian',
                    style: AppTextStyle.headlineMd,
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'Kumpulan hasil penelitian yang berkaitan dengan kesiapan kerja, employability skill, dan pengembangan karier.',
                    style: AppTextStyle.labelLg.copyWith(color: AppColor.gray),
                  ),

                  BlocBuilder<
                    ReferensiHasilPenelitianBloc,
                    ReferensiHasilPenelitianState
                  >(
                    builder: (context, state) {
                      if (state.listStatus.isLoading) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 60),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }

                      if (state.listStatus.isError) {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 40),
                            child: Column(
                              children: [
                                Icon(
                                  FontAwesomeIcons.triangleExclamation,
                                  size: 40,
                                  color: AppColor.secondary,
                                ),

                                const SizedBox(height: 16),

                                Text(
                                  'Gagal memuat data',
                                  style: AppTextStyle.titleMd.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),

                                const SizedBox(height: 8),

                                Text(
                                  state.error.isNotEmpty
                                      ? state.error
                                      : 'Terjadi kesalahan saat mengambil data.',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.bodyMd.copyWith(
                                    // ignore: deprecated_member_use
                                    color: Colors.white.withOpacity(0.7),
                                  ),
                                ),

                                const SizedBox(height: 16),

                                ElevatedButton(
                                  onPressed: () {
                                    context
                                        .read<ReferensiHasilPenelitianBloc>()
                                        .add(
                                          const ReferensiHasilPenelitianEvent.fetch(
                                            page: 1,
                                            perPage: 9,
                                          ),
                                        );
                                  },
                                  child: const Text('Coba Lagi'),
                                ),
                              ],
                            ),
                          ),
                        );
                      }

                      final data = state.data ?? [];

                      if (data.isEmpty) {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50),
                            child: Column(
                              children: [
                                Icon(
                                  FontAwesomeIcons.folderOpen,
                                  size: 40,
                                  color: AppColor.secondary,
                                ),

                                const SizedBox(height: 16),

                                Text(
                                  'Belum ada data',
                                  style: AppTextStyle.titleMd.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),

                                const SizedBox(height: 8),

                                Text(
                                  'Data hasil penelitian belum tersedia.',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.bodyMd.copyWith(
                                    color: Colors.white.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }

                      final currentPage = state.pagination?.currentPage ?? 1;

                      final lastPage = state.pagination?.lastPage ?? 1;

                      final total = state.pagination?.total ?? data.length;

                      return Column(
                        children: [
                          ...data.map(
                            (item) => Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: _ResearchCard(item: item),
                            ),
                          ),

                          const SizedBox(height: 8),

                          _buildPagination(
                            currentPage: currentPage,
                            lastPage: lastPage,
                            total: total,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPagination({
    required int currentPage,
    required int lastPage,
    required int total,
  }) {
    if (lastPage <= 1) {
      return const SizedBox.shrink();
    }

    final startData = ((currentPage - 1) * _itemsPerPage) + 1;

    final endData = (currentPage * _itemsPerPage) > total
        ? total
        : currentPage * _itemsPerPage;

    return Column(
      children: [
        const SizedBox(height: 8),

        // Info jumlah data
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: AppColor.primary,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColor.white.withValues(alpha: 0.10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.menu_book_outlined,
                color: AppColor.secondary,
                size: 22,
              ),

              const SizedBox(width: 8),

              Flexible(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: AppTextStyle.bodyMd.copyWith(
                      color: AppColor.white.withValues(alpha: 0.65),
                    ),
                    children: [
                      const TextSpan(text: 'Menampilkan '),

                      TextSpan(
                        text: '$startData',
                        style: AppTextStyle.bodyMd.copyWith(
                          color: AppColor.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      TextSpan(
                        text: ' - ',
                        style: AppTextStyle.bodyMd.copyWith(
                          color: AppColor.white.withValues(alpha: 0.65),
                        ),
                      ),

                      TextSpan(
                        text: '$endData',
                        style: AppTextStyle.bodyMd.copyWith(
                          color: AppColor.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      TextSpan(
                        text: ' dari ',
                        style: AppTextStyle.bodyMd.copyWith(
                          color: AppColor.white.withValues(alpha: 0.65),
                        ),
                      ),

                      TextSpan(
                        text: '$total',
                        style: AppTextStyle.bodyMd.copyWith(
                          color: AppColor.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      TextSpan(
                        text: ' penelitian',
                        style: AppTextStyle.bodyMd.copyWith(
                          color: AppColor.white.withValues(alpha: 0.65),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        // Previous / Next
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPaginationButton(
              label: 'Previous',
              icon: Icons.chevron_left,
              enabled: currentPage > 1,
              onPressed: () {
                _fetchPage(currentPage - 1);
              },
            ),

            const SizedBox(width: 12),

            _buildPaginationButton(
              label: 'Next',
              icon: Icons.chevron_right,
              iconOnRight: true,
              enabled: currentPage < lastPage,
              onPressed: () {
                _fetchPage(currentPage + 1);
              },
            ),
          ],
        ),

        const SizedBox(height: 16),

        // Indicator halaman
        _buildPageIndicator(currentPage: currentPage, lastPage: lastPage),
      ],
    );
  }

  Widget _buildPageIndicator({
    required int currentPage,
    required int lastPage,
  }) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: List.generate(lastPage, (index) {
        final page = index + 1;
        final isActive = page == currentPage;

        return GestureDetector(
          onTap: isActive
              ? null
              : () {
                  _fetchPage(page);
                },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: isActive ? 28 : 8,
            height: 8,
            decoration: BoxDecoration(
              color: isActive
                  ? AppColor.secondary
                  : AppColor.white.withValues(alpha: 0.25),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildPaginationButton({
    required String label,
    required IconData icon,
    required bool enabled,
    required VoidCallback onPressed,
    bool iconOnRight = false,
  }) {
    final children = [
      if (!iconOnRight) ...[
        Icon(
          icon,
          size: 26,
          color: enabled
              ? AppColor.white
              : AppColor.white.withValues(alpha: 0.25),
        ),

        const SizedBox(width: 4),
      ],

      Text(
        label,
        style: AppTextStyle.titleMd.copyWith(
          color: enabled
              ? AppColor.white
              : AppColor.white.withValues(alpha: 0.25),
        ),
      ),

      if (iconOnRight) ...[
        const SizedBox(width: 4),

        Icon(
          icon,
          size: 26,
          color: enabled
              ? AppColor.white
              : AppColor.white.withValues(alpha: 0.25),
        ),
      ],
    ];

    return SizedBox(
      width: 140,
      height: 50,
      child: OutlinedButton(
        onPressed: enabled ? onPressed : null,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          side: BorderSide(
            color: enabled
                ? AppColor.white.withValues(alpha: 0.15)
                : AppColor.white.withValues(alpha: 0.05),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}

class _ResearchCard extends StatelessWidget {
  final ReferensiHasilPenelitianModel item;

  const _ResearchCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.primary,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColor.white.withValues(alpha: 0.06)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon + badge
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColor.secondary.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.science_outlined,
                    color: AppColor.secondary,
                    size: 26,
                  ),
                ),

                const SizedBox(width: 12),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.secondary.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'PENELITIAN',
                    style: AppTextStyle.labelMd.copyWith(
                      color: AppColor.secondary,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Judul
            Text(
              item.judul?.trim().isNotEmpty == true
                  ? item.judul!
                  : 'Judul penelitian tidak tersedia',
              style: AppTextStyle.titleLg.copyWith(
                color: AppColor.white,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 12),

            // Peneliti
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.person_outline, color: AppColor.secondary, size: 20),

                const SizedBox(width: 8),

                Expanded(
                  child: Text(
                    item.peneliti?.trim().isNotEmpty == true
                        ? item.peneliti!
                        : 'Peneliti tidak tersedia',
                    style: AppTextStyle.bodyMd.copyWith(
                      color: AppColor.white.withValues(alpha: 0.85),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            // Institusi
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.account_balance_outlined,
                  color: AppColor.gray,
                  size: 20,
                ),

                const SizedBox(width: 8),

                Expanded(
                  child: Text(
                    item.institusi?.trim().isNotEmpty == true
                        ? item.institusi!
                        : 'Institusi tidak tersedia',
                    style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            // Tahun
            if (item.tahun != null)
              Row(
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    color: AppColor.gray,
                    size: 18,
                  ),

                  const SizedBox(width: 8),

                  Text(
                    '${item.tahun}',
                    style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
                  ),
                ],
              ),

            const SizedBox(height: 18),

            // Lihat File
            InkWell(
              onTap: () async {
                final fileUrl = item.fileDokumen;

                if (fileUrl == null || fileUrl.trim().isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('File penelitian belum tersedia.'),
                    ),
                  );

                  return;
                }

                final uri = Uri.tryParse(fileUrl);

                if (uri == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('URL file tidak valid.')),
                  );

                  return;
                }

                try {
                  final launched = await launchUrl(
                    uri,
                    mode: LaunchMode.externalApplication,
                  );

                  if (!launched && context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('File tidak dapat dibuka.')),
                    );
                  }
                } catch (e) {
                  debugPrint('OPEN PDF ERROR: $e');

                  if (!context.mounted) return;

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Gagal membuka file penelitian.'),
                    ),
                  );
                }
              },
              borderRadius: BorderRadius.circular(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lihat File',
                    style: AppTextStyle.labelLg.copyWith(
                      color: AppColor.secondary,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  Icon(
                    Icons.picture_as_pdf_outlined,
                    color: AppColor.secondary,
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
