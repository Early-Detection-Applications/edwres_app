import 'package:dio/dio.dart';
import 'package:edwres_app/app/theme/theme.dart';
import 'package:edwres_app/core/blocs/referensi_buku/referensi_buku.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/data/repository/referensi_buku_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class ReferensiBukuDetailScreen extends StatefulWidget {
  final int id;

  const ReferensiBukuDetailScreen({super.key, required this.id});

  @override
  State<ReferensiBukuDetailScreen> createState() =>
      _ReferensiBukuDetailScreenState();
}

class _ReferensiBukuDetailScreenState extends State<ReferensiBukuDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ReferensiBukuBloc(ReferensiBukuRepository())
            ..add(ReferensiBukuEvent.fetchDetail(widget.id)),
      child: _ReferensiBukuDetailContent(id: widget.id),
    );
  }
}

class _ReferensiBukuDetailContent extends StatelessWidget {
  final int id;

  const _ReferensiBukuDetailContent({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary400,

      drawer: const Drawer(
        backgroundColor: AppColor.primary,
        child: AppDrawer(),
      ),

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

      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Navbar(),

              const SizedBox(height: 18),

              _buildTopBar(context),

              const SizedBox(height: 20),

              BlocBuilder<ReferensiBukuBloc, ReferensiBukuState>(
                builder: (context, state) {
                  if (state.detailStatus.isLoading) {
                    return _buildLoading();
                  }

                  if (state.detailStatus.isError) {
                    return _buildError(context, state.error);
                  }

                  if (state.detailStatus.isLoaded) {
                    final referensi = state.detail;

                    if (referensi == null) {
                      return _buildError(
                        context,
                        'Data detail buku tidak ditemukan.',
                      );
                    }

                    return _buildContent(context, referensi);
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

  // ============================================================
  // TOP BAR
  // ============================================================

  Widget _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Material(
            color: AppColor.primary,
            borderRadius: BorderRadius.circular(12),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                context.pop();
              },
              child: const SizedBox(
                width: 44,
                height: 44,
                child: Center(
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: 12),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Literasi',
                style: AppTextStyle.labelMd.copyWith(
                  color: AppColor.secondary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Referensi Buku',
                style: AppTextStyle.titleMd.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ============================================================
  // CONTENT
  // ============================================================

  Widget _buildContent(BuildContext context, dynamic referensi) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ========================================================
          // HERO
          // ========================================================
          _buildHeroCard(referensi),

          const SizedBox(height: 24),

          // ========================================================
          // INFORMASI
          // ========================================================
          _buildSectionHeader(
            icon: FontAwesomeIcons.circleInfo,
            title: 'Informasi Buku',
            subtitle: 'Detail publikasi buku',
          ),

          const SizedBox(height: 12),

          _buildInformationCard(referensi),

          const SizedBox(height: 16),

          // ========================================================
          // LIHAT FILE
          // ========================================================
          _buildDownloadButton(context, referensi),

          const SizedBox(height: 24),
        ],
      ),
    );
  }

  // ============================================================
  // HERO CARD
  // ============================================================

  Widget _buildHeroCard(dynamic referensi) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColor.secondary.withOpacity(0.18)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.10),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          // --------------------------------------------------------
          // COVER
          // --------------------------------------------------------
          _buildCover(referensi.gambar),

          const SizedBox(height: 22),

          // --------------------------------------------------------
          // BADGE
          // --------------------------------------------------------
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: AppColor.secondary.withOpacity(0.13),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: AppColor.secondary.withOpacity(0.18)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(
                  FontAwesomeIcons.bookOpen,
                  size: 11,
                  color: AppColor.secondary,
                ),

                const SizedBox(width: 7),

                Text(
                  'REFERENSI BUKU',
                  style: AppTextStyle.labelSm.copyWith(
                    color: AppColor.secondary,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.6,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 14),

          // --------------------------------------------------------
          // TITLE
          // --------------------------------------------------------
          Text(
            referensi.judul ?? 'Tanpa judul',
            textAlign: TextAlign.center,
            style: AppTextStyle.headlineMd.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              height: 1.3,
            ),
          ),

          const SizedBox(height: 12),

          // --------------------------------------------------------
          // AUTHOR
          // --------------------------------------------------------
          if ((referensi.penulis ?? '').isNotEmpty)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.userPen,
                  size: 12,
                  color: Colors.white.withOpacity(0.65),
                ),

                const SizedBox(width: 7),

                Flexible(
                  child: Text(
                    referensi.penulis!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.bodyMd.copyWith(
                      color: Colors.white.withOpacity(0.70),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  // ============================================================
  // COVER
  // ============================================================

  Widget _buildCover(String? imageUrl) {
    return Container(
      width: 175,
      height: 250,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.22),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(11),
        child: imageUrl == null || imageUrl.isEmpty
            ? _buildCoverPlaceholder()
            : Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return _buildCoverPlaceholder();
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }

                  return Container(
                    color: AppColor.primary400,
                    child: const Center(
                      child: SizedBox(
                        width: 26,
                        height: 26,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }

  Widget _buildCoverPlaceholder() {
    return Container(
      color: AppColor.primary400,
      child: Center(
        child: FaIcon(
          FontAwesomeIcons.book,
          size: 46,
          color: AppColor.secondary,
        ),
      ),
    );
  }

  // ============================================================
  // SECTION HEADER
  // ============================================================

  Widget _buildSectionHeader({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: AppColor.secondary.withOpacity(0.13),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: FaIcon(icon, size: 17, color: AppColor.secondary),
          ),
        ),

        const SizedBox(width: 11),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyle.titleLg.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(height: 2),

              Text(
                subtitle,
                style: AppTextStyle.labelMd.copyWith(
                  color: Colors.white.withOpacity(0.70),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ============================================================
  // INFORMATION CARD
  // ============================================================

  Widget _buildInformationCard(dynamic referensi) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColor.primaryBold,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColor.primary.withOpacity(0.06)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.045),
            blurRadius: 14,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildInfoItem(
            icon: FontAwesomeIcons.userPen,
            label: 'Penulis',
            value: referensi.penulis,
          ),

          _buildInfoDivider(),

          _buildInfoItem(
            icon: FontAwesomeIcons.building,
            label: 'Penerbit',
            value: referensi.penerbit,
          ),

          _buildInfoDivider(),

          _buildInfoItem(
            icon: FontAwesomeIcons.calendar,
            label: 'Tahun Terbit',
            value: referensi.tahun?.toString(),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // LIHAT FILE
  // ============================================================

  Widget _buildDownloadButton(BuildContext context, dynamic referensi) {
    final fileUrl = referensi.file_dokumen;

    final hasDocument = fileUrl != null && fileUrl.toString().trim().isNotEmpty;

    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton.icon(
        onPressed: hasDocument
            ? () => _openBook(context, fileUrl.toString())
            : null,
        icon: const FaIcon(FontAwesomeIcons.filePdf, size: 17),
        label: Text(
          hasDocument ? 'Lihat File' : 'Dokumen Belum Tersedia',
          style: AppTextStyle.titleMd.copyWith(fontWeight: FontWeight.w700),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.secondary,
          foregroundColor: Colors.white,
          disabledBackgroundColor: AppColor.gray.withOpacity(0.15),
          disabledForegroundColor: AppColor.gray,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }

  // ============================================================
  // OPEN PDF
  // ============================================================

  Future<void> _openBook(BuildContext context, String url) async {
    try {
      final uri = Uri.parse(url);

      final launched = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );

      if (!launched && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Tidak dapat membuka file PDF.')),
        );
      }
    } catch (e) {
      debugPrint('OPEN PDF ERROR: $e');

      if (!context.mounted) return;

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Gagal membuka file PDF.')));
    }
  }

  // ============================================================
  // INFORMATION ITEM
  // ============================================================

  Widget _buildInfoItem({
    required IconData icon,
    required String label,
    String? value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: AppColor.primary400,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: FaIcon(icon, size: 15, color: AppColor.secondary),
          ),
        ),

        const SizedBox(width: 13),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: AppTextStyle.labelMd.copyWith(color: AppColor.white),
              ),

              const SizedBox(height: 3),

              Text(
                value?.trim().isNotEmpty == true ? value! : '-',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.bodyLg.copyWith(
                  color: AppColor.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Divider(height: 1, color: AppColor.gray.withOpacity(0.10)),
    );
  }

  // ============================================================
  // LOADING
  // ============================================================

  Widget _buildLoading() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 130),
      child: Center(child: CircularProgressIndicator()),
    );
  }

  // ============================================================
  // ERROR
  // ============================================================

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
              'Gagal memuat buku',
              textAlign: TextAlign.center,
              style: AppTextStyle.titleLg.copyWith(
                color: AppColor.primary,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 7),

            Text(
              error.isEmpty
                  ? 'Terjadi kesalahan saat mengambil data buku.'
                  : error,
              textAlign: TextAlign.center,
              style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
            ),

            const SizedBox(height: 18),

            SizedBox(
              height: 44,
              child: ElevatedButton.icon(
                onPressed: () {
                  context.read<ReferensiBukuBloc>().add(
                    ReferensiBukuEvent.fetchDetail(id),
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
