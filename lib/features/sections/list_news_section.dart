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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListNewsSection extends StatefulWidget {
  const ListNewsSection({super.key});

  @override
  State<ListNewsSection> createState() => _ListNewsSectionState();
}

class _ListNewsSectionState extends State<ListNewsSection> {
  final TextEditingController _searchController = TextEditingController();

  int _currentPage = 1;

  // Jumlah berita yang ditampilkan setiap halaman
  static const int _itemsPerPage = 5;

  @override
  void initState() {
    super.initState();

    _fetchData();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _fetchData() {
    context.read<NewsBloc>().add(NewsEvent.fetch());
  }

  void _searchNews(String value) {
    setState(() {
      _currentPage = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColor.primary,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informasi Terkini',
              style: AppTextStyle.labelLg.copyWith(
                color: AppColor.secondary,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              'Berita & Artikel',
              style: AppTextStyle.headlineMd.copyWith(color: AppColor.white),
            ),
            const SizedBox(height: 20),
            _buildSearchField(),
            const SizedBox(height: 28),
            BlocBuilder<NewsBloc, NewsState>(
              builder: (context, state) {
                if (state.status.isLoading) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                if (state.status.isLoaded && state.data != null) {
                  final newsList = _filterNews(state.data!);

                  if (newsList.isEmpty) {
                    return _buildEmptyState();
                  }

                  final totalPages = (newsList.length / _itemsPerPage).ceil();

                  if (_currentPage > totalPages) {
                    _currentPage = totalPages;
                  }

                  final startIndex = (_currentPage - 1) * _itemsPerPage;

                  final endIndex =
                      (startIndex + _itemsPerPage) > newsList.length
                      ? newsList.length
                      : startIndex + _itemsPerPage;

                  final paginatedNews = newsList.sublist(startIndex, endIndex);

                  return Column(
                    children: [
                      ...paginatedNews.map(
                        (news) => Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: NewsCard(newsModel: news),
                        ),
                      ),

                      const SizedBox(height: 8),

                      _buildPagination(
                        totalData: newsList.length,
                        totalPages: totalPages,
                      ),
                    ],
                  );
                }

                return _buildErrorState();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchController,
      onChanged: _searchNews,
      style: AppTextStyle.bodyLg.copyWith(color: AppColor.white),
      cursorColor: AppColor.secondary,
      decoration: InputDecoration(
        hintText: 'Cari berita...',
        hintStyle: AppTextStyle.bodyLg.copyWith(
          color: AppColor.white.withValues(alpha: 0.55),
        ),
        prefixIcon: Icon(
          Icons.search,
          color: AppColor.white.withValues(alpha: 0.55),
          size: 24,
        ),
        filled: true,
        fillColor: AppColor.primary400.withValues(alpha: 0.15),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: AppColor.white.withValues(alpha: 0.12),
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: AppColor.secondary.withValues(alpha: 0.5),
            width: 1.5,
          ),
        ),
      ),
    );
  }

  List<dynamic> _filterNews(List<dynamic> data) {
    final keyword = _searchController.text.trim().toLowerCase();

    if (keyword.isEmpty) {
      return data;
    }

    return data.where((news) {
      final title = news.judul?.toString().toLowerCase() ?? '';

      final category =
          news.kategori?.namaKategori?.toString().toLowerCase() ?? '';

      return title.contains(keyword) || category.contains(keyword);
    }).toList();
  }

  Widget _buildPagination({required int totalData, required int totalPages}) {
    final startData = ((_currentPage - 1) * _itemsPerPage) + 1;

    final endData = (_currentPage * _itemsPerPage) > totalData
        ? totalData
        : _currentPage * _itemsPerPage;

    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColor.white.withValues(alpha: 0.12)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.format_list_bulleted,
                color: AppColor.secondary,
                size: 24,
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
                        text: '$totalData',
                        style: AppTextStyle.bodyMd.copyWith(
                          color: AppColor.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      TextSpan(
                        text: ' berita',
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPaginationButton(
              label: 'Previous',
              icon: Icons.chevron_left,
              enabled: _currentPage > 1,
              onPressed: () {
                if (_currentPage <= 1) return;

                setState(() {
                  _currentPage--;
                });
              },
            ),

            const SizedBox(width: 12),

            _buildPaginationButton(
              label: 'Next',
              icon: Icons.chevron_right,
              iconOnRight: true,
              enabled: _currentPage < totalPages,
              onPressed: () {
                if (_currentPage >= totalPages) return;

                setState(() {
                  _currentPage++;
                });
              },
            ),
          ],
        ),

        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(totalPages, (index) {
            final page = index + 1;
            final isActive = page == _currentPage;

            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentPage = page;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(horizontal: 4),
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
        ),
      ],
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
      if (!iconOnRight) Icon(icon, size: 28),

      if (!iconOnRight) const SizedBox(width: 4),

      Text(
        label,
        style: AppTextStyle.titleMd.copyWith(
          color: enabled
              ? AppColor.white
              : AppColor.white.withValues(alpha: 0.25),
        ),
      ),

      if (iconOnRight) const SizedBox(width: 4),

      if (iconOnRight) Icon(icon, size: 28),
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
          mainAxisSize: MainAxisSize.max,
          children: children,
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Center(
        child: Column(
          children: [
            Icon(
              Icons.search_off,
              size: 48,
              color: AppColor.white.withValues(alpha: 0.5),
            ),

            const SizedBox(height: 12),

            Text(
              'Berita tidak ditemukan',
              style: AppTextStyle.titleMd.copyWith(color: AppColor.white),
            ),

            const SizedBox(height: 4),

            Text(
              'Coba gunakan kata kunci lain.',
              style: AppTextStyle.bodyMd.copyWith(
                color: AppColor.white.withValues(alpha: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Center(
        child: Column(
          children: [
            Text(
              'Data tidak ditemukan',
              style: AppTextStyle.bodyMd.copyWith(color: AppColor.white),
            ),

            const SizedBox(height: 8),

            InkWell(
              onTap: _fetchData,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.refresh, color: AppColor.secondary),

                  const SizedBox(width: 4),

                  Text(
                    'Ulangi',
                    style: AppTextStyle.titleSm.copyWith(
                      color: AppColor.secondary,
                      fontWeight: FontWeight.w700,
                    ),
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
