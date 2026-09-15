import 'package:edwres_app/app/theme/theme.dart';
import 'package:edwres_app/core/blocs/modul_pelatihan/modul_pelatihan.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/data/repository/modul_pelatihan_repository.dart';
import 'package:edwres_app/models/modul_pelatihan/modul_pelatihan_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ModulPelatihanScreen extends StatefulWidget {
  const ModulPelatihanScreen({super.key});

  @override
  State<ModulPelatihanScreen> createState() => _ModulPelatihanScreenState();
}

class _ModulPelatihanScreenState extends State<ModulPelatihanScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ModulPelatihanBloc(ModulPelatihanRepository())
            ..add(const ModulPelatihanEvent.fetch(page: 1, perPage: 9)),
      child: const _ModulPelatihanContent(),
    );
  }
}

class _ModulPelatihanContent extends StatelessWidget {
  const _ModulPelatihanContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary400,

      // ==============================================================
      // DRAWER
      // ==============================================================
      drawer: const Drawer(
        backgroundColor: AppColor.primary,
        child: AppDrawer(),
      ),

      // ==============================================================
      // FLOATING WHATSAPP
      // Sama seperti screen lainnya
      // ==============================================================
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppColor.green,
        elevation: 4,
        onPressed: openWhatsapp,
        child: const FaIcon(
          FontAwesomeIcons.whatsapp,
          color: Colors.white,
          size: 28,
        ),
      ),

      // ==============================================================
      // BODY
      // ==============================================================
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ========================================================
              // NAVBAR
              // ========================================================
              const Navbar(),

              const SizedBox(height: 18),

              // ========================================================
              // HEADER
              // ========================================================
              _buildHeader(),

              const SizedBox(height: 20),

              // ========================================================
              // CONTENT
              // ========================================================
              BlocBuilder<ModulPelatihanBloc, ModulPelatihanState>(
                builder: (context, state) {
                  if (state.listStatus.isLoading) {
                    return _buildLoading();
                  }

                  if (state.listStatus.isError) {
                    return _buildError(context, state.error);
                  }

                  if (state.listStatus.isLoaded) {
                    if (state.data == null || state.data!.isEmpty) {
                      return _buildEmpty();
                    }

                    return _buildList(context, state);
                  }

                  return const SizedBox.shrink();
                },
              ),

              const SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }

  // ===========================================================================
  // HEADER
  // ===========================================================================

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pengembangan',
                  style: AppTextStyle.labelMd.copyWith(
                    color: AppColor.secondary,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  'Modul Pelatihan',
                  style: AppTextStyle.titleLg.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 8),

                Text(
                  'Modul belajar dan bahan pengembangan diri untuk meningkatkan kesiapan kerja dan kompetensi pendukung lainnya.',
                  style: AppTextStyle.labelLg.copyWith(color: AppColor.gray),
                ),

                const SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // LIST
  // ===========================================================================

  Widget _buildList(BuildContext context, ModulPelatihanState state) {
    final data = state.data!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ...data.map(
            (modul) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: _ModuleCard(
                modul: modul,
                onOpen: () => _openModule(context, modul),
              ),
            ),
          ),

          // ==========================================================
          // PAGINATION
          // ==========================================================
          _buildPagination(context, state),
        ],
      ),
    );
  }

  // ===========================================================================
  // OPEN MODULE
  // ===========================================================================

  Future<void> _openModule(
    BuildContext context,
    ModulPelatihanModel modul,
  ) async {
    final fileModul = modul.file_modul;

    if (fileModul == null || fileModul.trim().isEmpty) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              const FaIcon(
                FontAwesomeIcons.filePdf,
                color: Colors.white,
                size: 18,
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Text(
                  'Dokumen modul belum tersedia.',
                  style: AppTextStyle.bodyMd.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          backgroundColor: AppColor.primary,
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );

      return;
    }

    final uri = Uri.tryParse(fileModul);

    if (uri == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('URL file modul tidak valid.')),
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
          const SnackBar(content: Text('File modul tidak dapat dibuka.')),
        );
      }
    } catch (e) {
      debugPrint('OPEN MODUL PDF ERROR: $e');

      if (!context.mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Gagal membuka file modul.')),
      );
    }
  }

  // ===========================================================================
  // PAGINATION
  // ===========================================================================

  Widget _buildPagination(BuildContext context, ModulPelatihanState state) {
    final pagination = state.pagination;

    if (pagination == null) {
      return const SizedBox.shrink();
    }

    final currentPage = pagination.currentPage ?? 1;

    final lastPage = pagination.lastPage ?? 1;

    final total = pagination.total ?? 0;

    if (lastPage <= 1) {
      return Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          'Menampilkan ${state.data?.length ?? 0} dari $total modul',
          style: AppTextStyle.bodyMd.copyWith(
            color: Colors.white.withOpacity(0.60),
          ),
        ),
      );
    }

    final start = ((currentPage - 1) * 9) + 1;

    final end = currentPage * 9 > total ? total : currentPage * 9;

    return Column(
      children: [
        Text(
          'Menampilkan $start-$end dari $total modul',
          style: AppTextStyle.bodyMd.copyWith(
            color: Colors.white.withOpacity(0.60),
          ),
        ),

        const SizedBox(height: 16),

        Wrap(
          alignment: WrapAlignment.center,
          spacing: 6,
          runSpacing: 8,
          children: [
            _PaginationButton(
              icon: FontAwesomeIcons.chevronLeft,
              enabled: currentPage > 1,
              onTap: currentPage > 1
                  ? () {
                      _fetchPage(context, currentPage - 1);
                    }
                  : null,
            ),

            ...List.generate(lastPage, (index) {
              final page = index + 1;
              final isActive = page == currentPage;

              return InkWell(
                onTap: isActive
                    ? null
                    : () {
                        _fetchPage(context, page);
                      },
                borderRadius: BorderRadius.circular(9),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: isActive
                        ? AppColor.secondary
                        : Colors.white.withOpacity(0.06),
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: isActive
                          ? AppColor.secondary
                          : Colors.white.withOpacity(0.10),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$page',
                    style: AppTextStyle.labelMd.copyWith(
                      color: Colors.white,
                      fontWeight: isActive ? FontWeight.w800 : FontWeight.w500,
                    ),
                  ),
                ),
              );
            }),

            _PaginationButton(
              icon: FontAwesomeIcons.chevronRight,
              enabled: currentPage < lastPage,
              onTap: currentPage < lastPage
                  ? () {
                      _fetchPage(context, currentPage + 1);
                    }
                  : null,
            ),
          ],
        ),
      ],
    );
  }

  void _fetchPage(BuildContext context, int page) {
    context.read<ModulPelatihanBloc>().add(
      ModulPelatihanEvent.fetch(page: page, perPage: 9),
    );
  }

  // ===========================================================================
  // LOADING
  // ===========================================================================

  Widget _buildLoading() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 130),
      child: Center(child: CircularProgressIndicator()),
    );
  }

  // ===========================================================================
  // EMPTY
  // ===========================================================================

  Widget _buildEmpty() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            const FaIcon(
              FontAwesomeIcons.bookOpen,
              size: 38,
              color: AppColor.primary,
            ),

            const SizedBox(height: 14),

            Text(
              'Belum Ada Modul',
              style: AppTextStyle.titleLg.copyWith(
                color: AppColor.primary,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              'Modul pelatihan belum tersedia.',
              textAlign: TextAlign.center,
              style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
            ),
          ],
        ),
      ),
    );
  }

  // ===========================================================================
  // ERROR
  // ===========================================================================

  Widget _buildError(BuildContext context, String error) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            Container(
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.08),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.error_outline_rounded,
                  color: Colors.red,
                  size: 30,
                ),
              ),
            ),

            const SizedBox(height: 14),

            Text(
              'Gagal memuat modul',
              textAlign: TextAlign.center,
              style: AppTextStyle.titleLg.copyWith(
                color: AppColor.primary,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 7),

            Text(
              error.isEmpty
                  ? 'Terjadi kesalahan saat mengambil data modul.'
                  : error,
              textAlign: TextAlign.center,
              style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
            ),

            const SizedBox(height: 18),

            SizedBox(
              height: 44,
              child: ElevatedButton.icon(
                onPressed: () {
                  context.read<ModulPelatihanBloc>().add(
                    const ModulPelatihanEvent.fetch(page: 1, perPage: 9),
                  );
                },
                icon: const Icon(Icons.refresh_rounded, size: 18),
                label: const Text('Coba Lagi'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primary,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// MODULE CARD
// =============================================================================

class _ModuleCard extends StatefulWidget {
  final ModulPelatihanModel modul;
  final VoidCallback onOpen;

  const _ModuleCard({required this.modul, required this.onOpen});

  @override
  State<_ModuleCard> createState() => _ModuleCardState();
}

class _ModuleCardState extends State<_ModuleCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final modul = widget.modul;

    final hasDocument =
        modul.file_modul != null && modul.file_modul!.trim().isNotEmpty;

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _hovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _hovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        transform: Matrix4.translationValues(0, _hovered ? -2 : 0, 0),
        child: Material(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(18),
          elevation: _hovered ? 7 : 2,
          shadowColor: Colors.black.withOpacity(0.18),
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 600) {
                  return _buildMobile(modul, hasDocument);
                }

                return _buildDesktop(modul, hasDocument);
              },
            ),
          ),
        ),
      ),
    );
  }

  // ===========================================================================
  // DESKTOP
  // ===========================================================================

  Widget _buildDesktop(ModulPelatihanModel modul, bool hasDocument) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildPdfIcon(92),

        const SizedBox(width: 22),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBadge(),

              const SizedBox(height: 10),

              Text(
                modul.judul?.trim().isNotEmpty == true
                    ? modul.judul!
                    : 'Modul Pelatihan',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.titleLg.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                modul.deskripsi?.trim().isNotEmpty == true
                    ? modul.deskripsi!
                    : 'Materi pelatihan untuk meningkatkan pengetahuan dan keterampilan.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.bodyMd.copyWith(
                  color: Colors.white.withOpacity(0.62),
                  height: 1.55,
                ),
              ),

              const SizedBox(height: 18),

              Row(
                children: [
                  if (modul.durasi != null &&
                      modul.durasi.toString().trim().isNotEmpty)
                    _buildDuration(modul.durasi.toString()),

                  const Spacer(),

                  _buildOpenButton(hasDocument),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ===========================================================================
  // MOBILE
  // ===========================================================================

  Widget _buildMobile(ModulPelatihanModel modul, bool hasDocument) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),

            Flexible(child: _buildBadge()),
          ],
        ),

        const SizedBox(height: 18),

        Text(
          modul.judul?.trim().isNotEmpty == true
              ? modul.judul!
              : 'Modul Pelatihan',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.titleLg.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            height: 1.3,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          modul.deskripsi?.trim().isNotEmpty == true
              ? modul.deskripsi!
              : 'Materi pelatihan untuk meningkatkan pengetahuan dan keterampilan.',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.bodyMd.copyWith(
            color: Colors.white.withOpacity(0.62),
            height: 1.55,
          ),
        ),

        if (modul.durasi != null &&
            modul.durasi.toString().trim().isNotEmpty) ...[
          const SizedBox(height: 16),

          _buildDuration(modul.durasi.toString()),
        ],

        const SizedBox(height: 18),

        SizedBox(width: double.infinity, child: _buildOpenButton(hasDocument)),
      ],
    );
  }

  // ===========================================================================
  // PDF ICON
  // ===========================================================================

  Widget _buildPdfIcon(double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: AppColor.secondary.withOpacity(0.12),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColor.secondary.withOpacity(0.18)),
      ),
      child: Stack(
        children: [
          Center(
            child: FaIcon(
              FontAwesomeIcons.filePdf,
              color: AppColor.secondary,
              size: size * 0.34,
            ),
          ),

          Positioned(
            bottom: 8,
            left: 0,
            right: 0,
            child: Text(
              'PDF',
              textAlign: TextAlign.center,
              style: AppTextStyle.labelSm.copyWith(
                color: AppColor.secondary,
                fontWeight: FontWeight.w800,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================================
  // BADGE
  // ===========================================================================

  Widget _buildBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: AppColor.secondary.withOpacity(0.10),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColor.secondary.withOpacity(0.16)),
      ),
      child: Text(
        'MODUL PELATIHAN',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyle.labelSm.copyWith(
          color: AppColor.secondary,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.4,
        ),
      ),
    );
  }

  // ===========================================================================
  // DURATION
  // ===========================================================================

  Widget _buildDuration(String duration) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FaIcon(FontAwesomeIcons.clock, size: 13, color: AppColor.secondary),

        const SizedBox(width: 7),

        Flexible(
          child: Text(
            duration,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.labelMd.copyWith(
              color: Colors.white.withOpacity(0.68),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  // ===========================================================================
  // OPEN BUTTON
  // ===========================================================================

  Widget _buildOpenButton(bool hasDocument) {
    return InkWell(
      onTap: hasDocument ? widget.onOpen : null,
      child: Container(
        constraints: const BoxConstraints(minHeight: 42),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: hasDocument
              ? AppColor.secondary
              : Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: hasDocument
                ? AppColor.secondary
                : Colors.white.withOpacity(0.08),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.filePdf,
              size: 13,
              color: hasDocument
                  ? Colors.white
                  : Colors.white.withOpacity(0.30),
            ),

            const SizedBox(width: 8),

            Flexible(
              child: Text(
                hasDocument ? 'Lihat File' : 'Dokumen Belum Tersedia',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.labelMd.copyWith(
                  color: hasDocument
                      ? Colors.white
                      : Colors.white.withOpacity(0.30),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// PAGINATION BUTTON
// =============================================================================

class _PaginationButton extends StatelessWidget {
  final IconData icon;
  final bool enabled;
  final VoidCallback? onTap;

  const _PaginationButton({
    required this.icon,
    required this.enabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: enabled
          ? Colors.white.withOpacity(0.06)
          : Colors.white.withOpacity(0.025),
      borderRadius: BorderRadius.circular(9),
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: BorderRadius.circular(9),
        child: SizedBox(
          width: 40,
          height: 40,
          child: Center(
            child: FaIcon(
              icon,
              size: 12,
              color: enabled ? Colors.white : Colors.white.withOpacity(0.20),
            ),
          ),
        ),
      ),
    );
  }
}
