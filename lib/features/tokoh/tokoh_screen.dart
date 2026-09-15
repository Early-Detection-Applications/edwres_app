import 'package:edwres_app/app/router/app_routes.dart';
import 'package:edwres_app/app/theme/theme.dart';
import 'package:edwres_app/core/blocs/tokoh/tokoh.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/data/repository/tokoh_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class TokohScreen extends StatefulWidget {
  const TokohScreen({super.key});

  @override
  State<TokohScreen> createState() => _TokohScreenState();
}

class _TokohScreenState extends State<TokohScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TokohBloc(TokohRepository())
            ..add(const TokohEvent.fetch(page: 1, perPage: 9)),
      child: const _TokohContent(),
    );
  }
}

class _TokohContent extends StatelessWidget {
  const _TokohContent();

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

              _buildHeader(),

              const SizedBox(height: 20),

              BlocBuilder<TokohBloc, TokohState>(
                builder: (context, state) {
                  if (state.listStatus.isLoading) {
                    return _buildLoading();
                  }

                  if (state.listStatus.isError) {
                    return _buildError(context, state.error);
                  }

                  if (state.listStatus.isLoaded) {
                    if (state.data!.isEmpty) {
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

  // ============================================================
  // HEADER
  // ============================================================

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
                  'Expert System',
                  style: AppTextStyle.labelMd.copyWith(
                    color: AppColor.secondary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Tokoh & Teori',
                  style: AppTextStyle.titleLg.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 8),

                Text(
                  'Daftar tokoh dan teori yang menjadi landasan dalam sistem deteksi kesiapan kerja ini.',
                  style: AppTextStyle.labelLg.copyWith(color: AppColor.gray),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // LIST
  // ============================================================

  Widget _buildList(BuildContext context, TokohState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ...state.data!.map(
            (tokoh) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: _buildTokohCard(context, tokoh),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // CARD
  // ============================================================

  Widget _buildTokohCard(BuildContext context, dynamic tokoh) {
    return Material(
      color: AppColor.primary,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: tokoh.id == null
            ? null
            : () {
                context.pushNamed(AppRoutes.tokohDetail, extra: tokoh);
              },
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColor.secondary.withOpacity(0.16)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImage(tokoh.gambar),

              const SizedBox(width: 14),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.secondary.withOpacity(0.13),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        'TOKOH',
                        style: AppTextStyle.labelSm.copyWith(
                          color: AppColor.secondary,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),

                    const SizedBox(height: 9),

                    Text(
                      tokoh.namaTokoh ?? 'Tanpa nama',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.titleLg.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        height: 1.25,
                      ),
                    ),

                    if ((tokoh.namaTeori ?? '').isNotEmpty) ...[
                      const SizedBox(height: 7),
                      Text(
                        tokoh.namaTeori!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.bodyMd.copyWith(
                          color: AppColor.secondary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],

                    const SizedBox(height: 10),

                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.arrowRight,
                          size: 11,
                          color: Colors.white.withOpacity(0.65),
                        ),
                        const SizedBox(width: 7),
                        Text(
                          'Lihat detail',
                          style: AppTextStyle.labelMd.copyWith(
                            color: Colors.white.withOpacity(0.70),
                            fontWeight: FontWeight.w600,
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

  // ============================================================
  // IMAGE
  // ============================================================

  Widget _buildImage(String? imageUrl) {
    return Container(
      width: 105,
      height: 135,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            blurRadius: 12,
            offset: const Offset(0, 6),
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

  Widget _buildImagePlaceholder() {
    return Container(
      color: AppColor.primary400,
      child: const Center(
        child: FaIcon(
          FontAwesomeIcons.userTie,
          size: 38,
          color: AppColor.secondary,
        ),
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
  // EMPTY
  // ============================================================

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
              FontAwesomeIcons.userTie,
              size: 38,
              color: AppColor.primary,
            ),

            const SizedBox(height: 14),

            Text(
              'Belum Ada Data Tokoh',
              style: AppTextStyle.titleLg.copyWith(
                color: AppColor.primary,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              'Data tokoh belum tersedia.',
              textAlign: TextAlign.center,
              style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
            ),
          ],
        ),
      ),
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
                  context.read<TokohBloc>().add(
                    const TokohEvent.fetch(page: 1, perPage: 9),
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
