import 'package:edwres_app/app/app.dart';
import 'package:edwres_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListEntrepreunershipSection extends StatefulWidget {
  const ListEntrepreunershipSection({super.key});

  @override
  State<ListEntrepreunershipSection> createState() =>
      _ListEntrepreunershipSectionState();
}

class _ListEntrepreunershipSectionState
    extends State<ListEntrepreunershipSection> {
  final TextEditingController _searchController = TextEditingController();

  int _currentPage = 1;

  // Jumlah data yang ditampilkan setiap halaman
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

  // ============================================================
  // FETCH DATA
  // ============================================================

  void _fetchData() {
    context.read<EntrepreneurshipBloc>().add(
      const EntrepreneurshipEvent.fetch(),
    );
  }

  // ============================================================
  // SEARCH
  // ============================================================

  void _searchNews(String value) {
    setState(() {
      _currentPage = 1;
    });
  }

  // ============================================================
  // CHANGE PAGE
  // ============================================================

  void _changePage(int page, int totalPages) {
    if (page < 1 || page > totalPages) {
      return;
    }

    setState(() {
      _currentPage = page;
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
            // =====================================================
            // HEADER
            // =====================================================
            Text(
              'Informasi Utama',
              style: AppTextStyle.labelLg.copyWith(
                color: AppColor.secondary,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              'Kesiapan Berwirausaha',
              style: AppTextStyle.headlineMd.copyWith(color: AppColor.white),
            ),

            const SizedBox(height: 20),

            // =====================================================
            // SEARCH
            // =====================================================
            _buildSearchField(),

            const SizedBox(height: 28),

            // =====================================================
            // DATA
            // =====================================================
            BlocBuilder<EntrepreneurshipBloc, EntrepreneurshipState>(
              builder: (context, state) {
                // =================================================
                // LOADING
                // =================================================

                if (state.status.isLoading) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: CircularProgressIndicator(
                        color: AppColor.secondary,
                      ),
                    ),
                  );
                }

                // =================================================
                // DATA LOADED
                // =================================================

                if (state.status.isLoaded && state.data != null) {
                  final filteredData = _filterData(state.data!);

                  // ===============================================
                  // DATA KOSONG
                  // ===============================================

                  if (filteredData.isEmpty) {
                    return _buildEmptyState();
                  }

                  // ===============================================
                  // PAGINATION
                  // ===============================================

                  final totalData = filteredData.length;

                  final totalPages = (totalData / _itemsPerPage).ceil();

                  // Pastikan current page tidak melebihi
                  // jumlah halaman setelah search.
                  if (_currentPage > totalPages) {
                    _currentPage = totalPages;
                  }

                  final startIndex = (_currentPage - 1) * _itemsPerPage;

                  final endIndex = (startIndex + _itemsPerPage) > totalData
                      ? totalData
                      : startIndex + _itemsPerPage;

                  final paginatedData = filteredData.sublist(
                    startIndex,
                    endIndex,
                  );

                  // ===============================================
                  // DATA LIST
                  // ===============================================

                  return Column(
                    children: [
                      ...paginatedData.map(
                        (item) => Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: EntrepreneurshipCard(item: item),
                        ),
                      ),

                      const SizedBox(height: 8),

                      // =============================================
                      // PAGINATION
                      // =============================================
                      _buildPagination(
                        totalData: totalData,
                        totalPages: totalPages,
                      ),
                    ],
                  );
                }

                // =================================================
                // ERROR
                // =================================================

                return _buildErrorState();
              },
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // SEARCH FIELD
  // ============================================================

  Widget _buildSearchField() {
    return TextField(
      controller: _searchController,
      onChanged: _searchNews,
      style: AppTextStyle.bodyLg.copyWith(color: AppColor.white),
      cursorColor: AppColor.secondary,
      decoration: InputDecoration(
        hintText: 'Cari informasi...',
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

  // ============================================================
  // FILTER DATA
  // ============================================================

  List<dynamic> _filterData(List<dynamic> data) {
    final keyword = _searchController.text.trim().toLowerCase();

    if (keyword.isEmpty) {
      return data;
    }

    return data.where((item) {
      // API menggunakan field "title"
      final title = item.title?.toString().toLowerCase() ?? '';

      return title.contains(keyword);
    }).toList();
  }

  // ============================================================
  // PAGINATION
  // ============================================================

  Widget _buildPagination({required int totalData, required int totalPages}) {
    final startData = ((_currentPage - 1) * _itemsPerPage) + 1;

    final endData = (_currentPage * _itemsPerPage) > totalData
        ? totalData
        : _currentPage * _itemsPerPage;

    return Column(
      children: [
        // ========================================================
        // INFO DATA
        // ========================================================
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
                        text: ' informasi',
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

        // ========================================================
        // PREVIOUS / NEXT
        // ========================================================
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPaginationButton(
              label: 'Previous',
              icon: Icons.chevron_left,
              enabled: _currentPage > 1,
              onPressed: () {
                _changePage(_currentPage - 1, totalPages);
              },
            ),

            const SizedBox(width: 12),

            _buildPaginationButton(
              label: 'Next',
              icon: Icons.chevron_right,
              iconOnRight: true,
              enabled: _currentPage < totalPages,
              onPressed: () {
                _changePage(_currentPage + 1, totalPages);
              },
            ),
          ],
        ),

        const SizedBox(height: 16),

        // ========================================================
        // PAGE INDICATOR
        // ========================================================
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(totalPages, (index) {
            final page = index + 1;
            final isActive = page == _currentPage;

            return GestureDetector(
              onTap: () {
                _changePage(page, totalPages);
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

  // ============================================================
  // PAGINATION BUTTON
  // ============================================================

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

  // ============================================================
  // EMPTY STATE
  // ============================================================

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
              'Informasi tidak ditemukan',
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

  // ============================================================
  // ERROR STATE
  // ============================================================

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
