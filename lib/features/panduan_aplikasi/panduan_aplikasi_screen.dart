import 'package:edwres_app/app/theme/theme.dart';
import 'package:edwres_app/core/blocs/panduan_aplikasi/panduan_aplikasi.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/data/repository/panduan_aplikasi_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PanduanAplikasiScreen extends StatefulWidget {
  const PanduanAplikasiScreen({super.key});

  @override
  State<PanduanAplikasiScreen> createState() => _PanduanAplikasiScreenState();
}

class _PanduanAplikasiScreenState extends State<PanduanAplikasiScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PanduanAplikasiBloc(PanduanAplikasiRepository())
            ..add(const PanduanAplikasiEvent.fetch(page: 1, perPage: 9)),
      child: const _PanduanAplikasiContent(),
    );
  }
}

class _PanduanAplikasiContent extends StatelessWidget {
  const _PanduanAplikasiContent();

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

              BlocBuilder<PanduanAplikasiBloc, PanduanAplikasiState>(
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

                    return _buildList(state);
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
                  'Bantuan',
                  style: AppTextStyle.labelMd.copyWith(
                    color: AppColor.secondary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Panduan Aplikasi',
                  style: AppTextStyle.titleLg.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 8),

                Text(
                  'Panduan penggunaan aplikasi EDWRES untuk memaksimalkan pengalaman Anda.',
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
  // LIST VIDEO
  // ============================================================

  Widget _buildList(PanduanAplikasiState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ...state.data!.map(
            (panduan) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: _PanduanVideoCard(
                judul: panduan.judul,
                videoUrl: panduan.videoUrl,
              ),
            ),
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
              FontAwesomeIcons.bookOpen,
              size: 38,
              color: AppColor.primary,
            ),

            const SizedBox(height: 14),

            Text(
              'Belum Ada Panduan',
              style: AppTextStyle.titleLg.copyWith(
                color: AppColor.primary,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              'Panduan aplikasi belum tersedia.',
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
              'Gagal memuat panduan',
              textAlign: TextAlign.center,
              style: AppTextStyle.titleLg.copyWith(
                color: AppColor.primary,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 7),

            Text(
              error.isEmpty
                  ? 'Terjadi kesalahan saat mengambil data panduan.'
                  : error,
              textAlign: TextAlign.center,
              style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
            ),

            const SizedBox(height: 18),

            SizedBox(
              height: 44,
              child: ElevatedButton.icon(
                onPressed: () {
                  context.read<PanduanAplikasiBloc>().add(
                    const PanduanAplikasiEvent.fetch(page: 1, perPage: 9),
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

class _PanduanVideoCard extends StatefulWidget {
  final String? judul;
  final String? videoUrl;

  const _PanduanVideoCard({required this.judul, required this.videoUrl});

  @override
  State<_PanduanVideoCard> createState() => _PanduanVideoCardState();
}

class _PanduanVideoCardState extends State<_PanduanVideoCard> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();

    final url = widget.videoUrl?.trim() ?? '';

    debugPrint('PANDUAN VIDEO URL: $url');

    final videoId = YoutubePlayerController.convertUrlToId(url);

    debugPrint('PANDUAN VIDEO ID: $videoId');

    if (videoId != null && videoId.isNotEmpty) {
      _controller = YoutubePlayerController.fromVideoId(
        videoId: videoId,
        autoPlay: false,
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
          enableCaption: true,
          playsInline: true,

          // Penting untuk iframe YouTube
          origin: 'https://www.youtube-nocookie.com',
        ),
      );
    }
  }

  @override
  void dispose() {
    _controller?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColor.secondary.withOpacity(0.35)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 16,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_buildVideo(), _buildInformation()],
        ),
      ),
    );
  }

  Widget _buildVideo() {
    if (_controller == null) {
      return AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.black,
          child: const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.video_library_outlined,
                  color: Colors.white54,
                  size: 42,
                ),
                SizedBox(height: 10),
                Text(
                  'Video tidak tersedia',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return YoutubePlayer(controller: _controller!, aspectRatio: 16 / 9);
  }

  Widget _buildInformation() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: AppColor.secondary.withOpacity(0.13),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: FaIcon(
                FontAwesomeIcons.circlePlay,
                color: AppColor.secondary,
                size: 16,
              ),
            ),
          ),

          const SizedBox(width: 11),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'VIDEO PANDUAN',
                  style: AppTextStyle.labelSm.copyWith(
                    color: AppColor.secondary,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.6,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  widget.judul ?? 'Panduan Aplikasi',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.titleMd.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
