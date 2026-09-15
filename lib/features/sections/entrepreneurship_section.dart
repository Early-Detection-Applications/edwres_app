import 'package:carousel_slider/carousel_slider.dart';
import 'package:edwres_app/app/app.dart';
import 'package:edwres_app/core/blocs/entrepreneurship/entrepreneurship_bloc.dart';
import 'package:edwres_app/core/widgets/cards/entrepreneurship_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';

class EntrepreneurshipSection extends StatefulWidget {
  const EntrepreneurshipSection({super.key});

  @override
  State<EntrepreneurshipSection> createState() =>
      _EntrepreneurshipSectionState();
}

class _EntrepreneurshipSectionState extends State<EntrepreneurshipSection> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    final state = context.read<EntrepreneurshipBloc>().state;

    if (state.data == null || state.data!.isEmpty) {
      _fetchData(context);
    }
  }

  void _fetchData(BuildContext context) {
    context.read<EntrepreneurshipBloc>().add(
      const EntrepreneurshipEvent.fetch(),
    );
  }

  /// Pre-cache gambar agar slide berikutnya
  /// tidak mulai download dari nol ketika tampil.
  void _precacheNextImage(
    BuildContext context,
    List<dynamic> items,
    int currentIndex,
  ) {
    if (items.isEmpty) {
      return;
    }

    final nextIndex = (currentIndex + 1) % items.length;

    final nextItem = items[nextIndex];

    if (nextItem.image == null || nextItem.image.toString().trim().isEmpty) {
      return;
    }

    final imageUrl = '${dotenv.get('IMAGE_URL')}/sliders/${nextItem.image}';

    precacheImage(NetworkImage(imageUrl), context).catchError((_) {
      // Jangan membuat carousel gagal
      // hanya karena gambar gagal di-cache.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColor.primary,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // =====================================================
            // HEADER
            // =====================================================
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'Informasi Utama',
                    style: TextStyle(
                      color: AppColor.secondary,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                ),

                // =================================================
                // LIHAT LAINNYA
                // =================================================
                InkWell(
                  onTap: () {
                    GoRouter.of(context).push(AppRoutes.entrepreneurshipList);
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 6,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Lihat lainnya',
                          style: TextStyle(
                            color: AppColor.secondary,
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),

                        const SizedBox(width: 4),

                        Icon(
                          Icons.arrow_forward,
                          color: AppColor.secondary,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 4),

            // =====================================================
            // SUB TITLE
            // =====================================================
            Text('Kesiapan Berwirausahan', style: AppTextStyle.headlineMd),

            const SizedBox(height: 16),

            // =====================================================
            // CONTENT
            // =====================================================
            BlocBuilder<EntrepreneurshipBloc, EntrepreneurshipState>(
              builder: (context, state) {
                // =================================================
                // LOADING
                // =================================================

                if (state.status.isLoading) {
                  return const SizedBox(
                    height: 340,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColor.secondary,
                      ),
                    ),
                  );
                }

                final items = state.data ?? [];

                // =================================================
                // DATA LOADED
                // =================================================

                if (state.status.isLoaded && items.isNotEmpty) {
                  return SizedBox(
                    height: 340,
                    child: Stack(
                      children: [
                        CarouselSlider.builder(
                          carouselController: _carouselController,
                          itemCount: items.length,
                          options: CarouselOptions(
                            height: 340,
                            viewportFraction: 1,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration: const Duration(
                              milliseconds: 600,
                            ),

                            /*
                             * Ketika slide berubah,
                             * langsung preload gambar
                             * slide berikutnya.
                             */
                            onPageChanged: (index, reason) {
                              if (!mounted) {
                                return;
                              }

                              setState(() {
                                _currentIndex = index;
                              });

                              _precacheNextImage(context, items, index);
                            },
                          ),
                          itemBuilder: (context, index, realIndex) {
                            return EntrepreneurshipCard(item: items[index]);
                          },
                        ),

                        // =================================================
                        // INDICATOR
                        // =================================================
                        Positioned(
                          bottom: 16,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              items.length,
                              (index) => AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                                width: _currentIndex == index ? 10 : 8,
                                height: _currentIndex == index ? 10 : 8,
                                decoration: BoxDecoration(
                                  color: _currentIndex == index
                                      ? AppColor.secondary
                                      : Colors.grey.shade400,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }

                // =================================================
                // DATA KOSONG
                // =================================================

                return SizedBox(
                  height: 200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Data tidak ditemukan',
                          style: TextStyle(color: AppColor.white),
                        ),

                        const SizedBox(height: 8),

                        InkWell(
                          onTap: () => _fetchData(context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.refresh,
                                color: AppColor.secondary,
                              ),

                              const SizedBox(width: 4),

                              Text(
                                'Ulangi',
                                style: TextStyle(
                                  color: AppColor.secondary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
