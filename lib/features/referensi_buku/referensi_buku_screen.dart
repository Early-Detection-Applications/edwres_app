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

import 'package:edwres_app/app/router/app_routes.dart';
import 'package:edwres_app/app/theme/theme.dart';
import 'package:edwres_app/core/blocs/referensi_buku/referensi_buku.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/data/repository/referensi_buku_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ReferensiBukuScreen extends StatefulWidget {
  const ReferensiBukuScreen({super.key});

  @override
  State<ReferensiBukuScreen> createState() => _ReferensiBukuScreenState();
}

class _ReferensiBukuScreenState extends State<ReferensiBukuScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReferensiBukuBloc(ReferensiBukuRepository()),
      child: const ReferensiBukaScreenContent(),
    );
  }
}

class ReferensiBukaScreenContent extends StatefulWidget {
  const ReferensiBukaScreenContent({super.key});

  @override
  State<ReferensiBukaScreenContent> createState() =>
      _ReferensiBukaScreenContentState();
}

class _ReferensiBukaScreenContentState
    extends State<ReferensiBukaScreenContent> {
  @override
  void initState() {
    super.initState();

    context.read<ReferensiBukuBloc>().add(
      const ReferensiBukuEvent.fetch(page: 1, perPage: 10),
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
          color: Colors.white,
          size: 30,
        ),
      ),
      drawer: const Drawer(
        backgroundColor: AppColor.primary,
        child: AppDrawer(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Navbar(),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Literasi',
                      style: TextStyle(
                        color: AppColor.secondary,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text('Referensi Buku', style: AppTextStyle.headlineMd),
                    const SizedBox(height: 8),
                    Text(
                      'Koleksi referensi buku yang relevan dengan pengembangan karir dan kesiapan kerja.',
                      style: AppTextStyle.labelLg.copyWith(
                        color: AppColor.gray,
                      ),
                    ),
                    const SizedBox(height: 32),
                    BlocBuilder<ReferensiBukuBloc, ReferensiBukuState>(
                      builder: (context, state) {
                        if (state.listStatus.isLoading) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(vertical: 60),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }

                        if (state.listStatus.isError) {
                          return _buildError(state.error);
                        }

                        if (state.listStatus.isLoaded) {
                          final data = state.data ?? [];

                          if (data.isEmpty) {
                            return _buildEmpty();
                          }

                          return Column(
                            children: [
                              ...data.map(
                                (referensi) => Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: _buildBookCard(context, referensi),
                                ),
                              ),
                              const SizedBox(height: 8),
                              _buildPagination(state),
                            ],
                          );
                        }

                        return const SizedBox.shrink();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookCard(BuildContext context, dynamic referensi) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColor.secondary.withOpacity(0.18),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 18,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBookCover(referensi.gambar),

              const SizedBox(width: 15),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Badge
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.secondary.withOpacity(0.14),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'REFERENSI BUKU',
                        style: AppTextStyle.labelSm.copyWith(
                          color: AppColor.secondary,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ),

                    const SizedBox(height: 9),

                    // Judul
                    Text(
                      referensi.judul ?? 'Tanpa judul',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.titleMd.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        height: 1.35,
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Penulis
                    if ((referensi.penulis ?? '').isNotEmpty)
                      _buildInfoRow(
                        FontAwesomeIcons.userPen,
                        referensi.penulis!,
                      ),

                    if ((referensi.penerbit ?? '').isNotEmpty) ...[
                      const SizedBox(height: 6),
                      _buildInfoRow(
                        FontAwesomeIcons.building,
                        referensi.penerbit!,
                      ),
                    ],

                    if (referensi.tahun != null) ...[
                      const SizedBox(height: 6),
                      _buildInfoRow(
                        FontAwesomeIcons.calendar,
                        referensi.tahun.toString(),
                      ),
                    ],

                    const SizedBox(height: 14),

                    // Detail button
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            context.pushNamed(
                              AppRoutes.referensiBukuDetail,
                              extra: referensi,
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 11,
                              vertical: 7,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.secondary,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Lihat detail',
                                  style: AppTextStyle.labelMd.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                const Icon(
                                  Icons.arrow_forward_rounded,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookCover(String? imageUrl) {
    return Container(
      width: 92,
      height: 132,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.18),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: imageUrl == null || imageUrl.isEmpty
            ? Container(
                color: AppColor.primary400,
                child: const Center(
                  child: Icon(
                    FontAwesomeIcons.book,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              )
            : Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: AppColor.primary400,
                    child: const Center(
                      child: Icon(
                        FontAwesomeIcons.book,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                  );
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }

                  return Container(
                    color: AppColor.primary400,
                    child: const Center(
                      child: SizedBox(
                        width: 22,
                        height: 22,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 18,
          child: FaIcon(icon, size: 12, color: AppColor.gray),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.labelMd.copyWith(color: AppColor.gray),
          ),
        ),
      ],
    );
  }

  Widget _buildError(String error) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const Icon(Icons.error_outline_rounded, size: 42, color: Colors.red),
          const SizedBox(height: 12),
          Text(
            'Gagal memuat referensi buku',
            textAlign: TextAlign.center,
            style: AppTextStyle.titleMd.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          Text(
            error,
            textAlign: TextAlign.center,
            style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {
              context.read<ReferensiBukuBloc>().add(
                const ReferensiBukuEvent.fetch(page: 1, perPage: 10),
              );
            },
            child: const Text('Coba Lagi'),
          ),
        ],
      ),
    );
  }

  Widget _buildEmpty() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const Icon(FontAwesomeIcons.bookOpen, size: 42, color: Colors.grey),
          const SizedBox(height: 12),
          Text(
            'Belum ada referensi buku',
            style: AppTextStyle.titleMd.copyWith(fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  Widget _buildPagination(ReferensiBukuState state) {
    final pagination = state.pagination;

    if (pagination == null) {
      return const SizedBox.shrink();
    }

    final currentPage = pagination.currentPage ?? 1;
    final lastPage = pagination.lastPage ?? 1;

    if (lastPage <= 1) {
      return const SizedBox.shrink();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 110,
          height: 44,
          child: OutlinedButton(
            onPressed: currentPage > 1
                ? () {
                    context.read<ReferensiBukuBloc>().add(
                      ReferensiBukuEvent.fetch(
                        page: currentPage - 1,
                        perPage: 10,
                      ),
                    );
                  }
                : null,
            child: const Text('Sebelumnya'),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          '$currentPage / $lastPage',
          style: AppTextStyle.labelLg.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(width: 12),
        SizedBox(
          width: 110,
          height: 44,
          child: OutlinedButton(
            onPressed: currentPage < lastPage
                ? () {
                    context.read<ReferensiBukuBloc>().add(
                      ReferensiBukuEvent.fetch(
                        page: currentPage + 1,
                        perPage: 10,
                      ),
                    );
                  }
                : null,
            child: const Text('Berikutnya'),
          ),
        ),
      ],
    );
  }
}
