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
import 'package:edwres_app/core/blocs/blocs.dart';
import 'package:edwres_app/core/widgets/cards/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
    _fetchData(context);
    super.initState();
  }

  void _fetchData(BuildContext context) {
    context.read<NewsBloc>().add(NewsEvent.fetch());
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
              style: TextStyle(
                color: AppColor.secondary,
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4.0),
            Text('Berita & Artikel', style: AppTextStyle.headlineMd),
            const SizedBox(height: 16.0),
            BlocBuilder<NewsBloc, NewsState>(
              builder: (context, state) {
                if (state.status.isLoading) {
                  return Center(child: CircularProgressIndicator());
                }
                if (state.status.isLoaded && state.data != null) {
                  return SizedBox(
                    height: 340,
                    child: Stack(
                      children: [
                        CarouselSlider.builder(
                          carouselController: _carouselController,
                          itemCount: state.data!.length,
                          options: CarouselOptions(
                            height: 340,
                            viewportFraction: 1,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration: const Duration(
                              milliseconds: 600,
                            ),
                            enlargeCenterPage: false,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                          ),
                          itemBuilder: (context, index, realIndex) {
                            return NewsCard(newsModel: state.data![index]);
                          },
                        ),
                        Positioned(
                          bottom: 16,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              state.data!.length,
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

                return Center(
                  child: Column(
                    children: [
                      Text(
                        'Data tidak ditemukan',
                        style: TextStyle(color: AppColor.white),
                      ),
                      const SizedBox(height: 8.0),
                      InkWell(
                        onTap: () {
                          _fetchData(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.refresh, color: AppColor.secondary),
                            const SizedBox(width: 4.0),
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
