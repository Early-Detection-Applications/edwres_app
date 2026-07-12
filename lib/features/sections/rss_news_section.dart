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

import 'package:edwres_app/app/theme/theme.dart';
import 'package:edwres_app/core/blocs/rss_news/rss_news_bloc.dart';
import 'package:edwres_app/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RssNewsSection extends StatefulWidget {
  const RssNewsSection({super.key});

  @override
  State<RssNewsSection> createState() => _RssNewsSectionState();
}

class _RssNewsSectionState extends State<RssNewsSection> {
  @override
  void initState() {
    _fetchData(context);
    super.initState();
  }

  void _fetchData(BuildContext context) {
    context.read<RssNewsBloc>().add(RssNewsEvent.fetch());
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
              'Update Luar',
              style: TextStyle(
                color: AppColor.secondary,
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4.0),
            Text('Kabar Global', style: AppTextStyle.headlineMd),
            const SizedBox(height: 16.0),
            BlocBuilder<RssNewsBloc, RssNewsState>(
              builder: (context, state) {
                if (state.status.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.status.isLoaded && state.data != null) {
                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.data!.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      return RssNewsCard(newsModel: state.data![index]);
                    },
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
