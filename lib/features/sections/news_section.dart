import 'package:edwres_app/app/app.dart';
import 'package:edwres_app/core/blocs/blocs.dart';
import 'package:edwres_app/core/widgets/cards/cards.dart';
import 'package:edwres_app/models/news/news_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';

class NewsSection extends StatefulWidget {
  const NewsSection({super.key});

  @override
  State<NewsSection> createState() => _NewsSectionState();
}

class _NewsSectionState extends State<NewsSection> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    final state = context.read<NewsBloc>().state;

    if (state.data == null || state.data!.isEmpty) {
      _fetchData();
    }
  }

  void _fetchData() {
    context.read<NewsBloc>().add(NewsEvent.fetch());
  }

  void _openAllNews() {
    GoRouter.of(context).pushNamed(AppRoutes.newsList);
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
            // =========================================================
            // HEADER
            // =========================================================
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'Informasi Terkini',
                    style: TextStyle(
                      color: AppColor.secondary,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                ),

                // =====================================================
                // LIHAT LAINNYA
                // =====================================================
                InkWell(
                  onTap: _openAllNews,
                  borderRadius: BorderRadius.circular(8),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
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
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: AppColor.secondary,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 4.0),

            // =========================================================
            // TITLE
            // =========================================================
            Text('Berita & Artikel', style: AppTextStyle.headlineMd),

            const SizedBox(height: 16.0),

            // =========================================================
            // NEWS
            // =========================================================
            BlocBuilder<NewsBloc, NewsState>(
              builder: (context, state) {
                // =====================================================
                // LOADING
                // =====================================================

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

                // =====================================================
                // DATA
                // =====================================================

                if (state.status.isLoaded &&
                    state.data != null &&
                    state.data!.isNotEmpty) {
                  // Home hanya menampilkan maksimal 5 berita.
                  final List<NewsModel> items = state.data!.take(5).toList();

                  if (_currentIndex >= items.length) {
                    _currentIndex = 0;
                  }

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

                            autoPlay: items.length > 1,

                            autoPlayInterval: const Duration(seconds: 3),

                            autoPlayAnimationDuration: const Duration(
                              milliseconds: 600,
                            ),

                            enlargeCenterPage: false,

                            onPageChanged: (index, reason) {
                              if (!mounted) return;

                              setState(() {
                                _currentIndex = index;
                              });
                            },
                          ),

                          itemBuilder: (context, index, realIndex) {
                            return NewsCard(newsModel: items[index]);
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
                                      ? Colors.orange
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

                // =====================================================
                // EMPTY / ERROR
                // =====================================================

                return Center(
                  child: Column(
                    children: [
                      Text(
                        'Data tidak ditemukan',
                        style: TextStyle(color: AppColor.white),
                      ),

                      const SizedBox(height: 8),

                      InkWell(
                        onTap: _fetchData,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.refresh, color: AppColor.secondary),

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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
