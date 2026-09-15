import 'package:edwres_app/app/theme/theme.dart';
import 'package:edwres_app/core/blocs/tokoh/tokoh.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/data/repository/tokoh_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class TokohDetailScreen extends StatefulWidget {
  final int id;

  const TokohDetailScreen({super.key, required this.id});

  @override
  State<TokohDetailScreen> createState() => _TokohDetailScreenState();
}

class _TokohDetailScreenState extends State<TokohDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TokohBloc(TokohRepository())..add(TokohEvent.fetchDetail(widget.id)),
      child: _TokohDetailContent(id: widget.id),
    );
  }
}

class _TokohDetailContent extends StatelessWidget {
  final int id;

  const _TokohDetailContent({required this.id});

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

              BlocBuilder<TokohBloc, TokohState>(
                builder: (context, state) {
                  if (state.detailStatus.isLoading) {
                    return _buildLoading();
                  }

                  if (state.detailStatus.isError) {
                    return _buildError(context, state.error);
                  }

                  if (state.detailStatus.isLoaded) {
                    final tokoh = state.detail;

                    if (tokoh == null) {
                      return _buildError(
                        context,
                        'Data detail tokoh tidak ditemukan.',
                      );
                    }

                    return _buildContent(context, tokoh);
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
                'Expert System',
                style: AppTextStyle.labelMd.copyWith(
                  color: AppColor.secondary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Tokoh & Teori',
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

  Widget _buildContent(BuildContext context, dynamic tokoh) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeroCard(tokoh),

          const SizedBox(height: 24),

          _buildSectionHeader(
            icon: FontAwesomeIcons.lightbulb,
            title: 'Teori',
            subtitle: 'Pemikiran dan teori tokoh',
          ),

          const SizedBox(height: 12),

          _buildTheoryCard(tokoh),
        ],
      ),
    );
  }

  // ============================================================
  // HERO
  // ============================================================

  Widget _buildHeroCard(dynamic tokoh) {
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
          _buildImage(tokoh.gambar),

          const SizedBox(height: 22),

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
                const FaIcon(
                  FontAwesomeIcons.userTie,
                  size: 11,
                  color: AppColor.secondary,
                ),
                const SizedBox(width: 7),
                Text(
                  'TOKOH',
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

          Text(
            tokoh.namaTokoh ?? 'Tanpa nama',
            textAlign: TextAlign.center,
            style: AppTextStyle.headlineMd.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              height: 1.3,
            ),
          ),

          if ((tokoh.namaTeori ?? '').isNotEmpty) ...[
            const SizedBox(height: 10),

            Text(
              tokoh.namaTeori!,
              textAlign: TextAlign.center,
              style: AppTextStyle.bodyLg.copyWith(
                color: AppColor.secondary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ],
      ),
    );
  }

  // ============================================================
  // IMAGE
  // ============================================================

  Widget _buildImage(String? imageUrl) {
    return Container(
      width: 175,
      height: 220,
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
            ? _buildImagePlaceholder()
            : Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return _buildImagePlaceholder();
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

  Widget _buildImagePlaceholder() {
    return Container(
      color: AppColor.primary400,
      child: const Center(
        child: FaIcon(
          FontAwesomeIcons.userTie,
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
  // THEORY CARD
  // ============================================================

  Widget _buildTheoryCard(dynamic tokoh) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if ((tokoh.namaTeori ?? '').isNotEmpty) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColor.primary400,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.lightbulb,
                      size: 15,
                      color: AppColor.secondary,
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Text(
                    tokoh.namaTeori!,
                    style: AppTextStyle.titleMd.copyWith(
                      color: AppColor.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 18),

            Divider(height: 1, color: AppColor.gray.withOpacity(0.10)),

            const SizedBox(height: 18),
          ],

          Html(
            data: tokoh.teori?.trim().isNotEmpty == true
                ? tokoh.teori!
                : '<p>Belum ada informasi teori.</p>',
            style: {
              'body': Style(
                margin: Margins.zero,
                padding: HtmlPaddings.zero,
                color: AppColor.white,
                fontSize: FontSize(AppTextStyle.bodyLg.fontSize ?? 15),
                lineHeight: LineHeight(AppTextStyle.bodyLg.height ?? 1.65),
              ),
              'p': Style(
                margin: Margins.only(bottom: 10),
                color: AppColor.white,
                fontSize: FontSize(AppTextStyle.bodyLg.fontSize ?? 15),
                lineHeight: LineHeight(AppTextStyle.bodyLg.height ?? 1.65),
              ),
              'strong': Style(
                color: AppColor.white,
                fontWeight: FontWeight.w700,
              ),
              'b': Style(color: AppColor.white, fontWeight: FontWeight.w700),
              'h1': Style(color: AppColor.white, fontWeight: FontWeight.w800),
              'h2': Style(color: AppColor.white, fontWeight: FontWeight.w800),
              'h3': Style(color: AppColor.white, fontWeight: FontWeight.w800),
              'ul': Style(color: AppColor.white),
              'ol': Style(color: AppColor.white),
              'li': Style(color: AppColor.white),
            },
          ),
        ],
      ),
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
              'Gagal memuat tokoh',
              textAlign: TextAlign.center,
              style: AppTextStyle.titleLg.copyWith(
                color: AppColor.primary,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 7),

            Text(
              error.isEmpty
                  ? 'Terjadi kesalahan saat mengambil data tokoh.'
                  : error,
              textAlign: TextAlign.center,
              style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
            ),

            const SizedBox(height: 18),

            SizedBox(
              height: 44,
              child: ElevatedButton.icon(
                onPressed: () {
                  context.read<TokohBloc>().add(TokohEvent.fetchDetail(id));
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
