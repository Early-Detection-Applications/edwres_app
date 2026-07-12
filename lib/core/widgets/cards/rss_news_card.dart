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
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/models/news/news.dart';
import 'package:flutter/material.dart';

class RssNewsCard extends StatelessWidget {
  final RssNewsModel newsModel;
  const RssNewsCard({super.key, required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Card(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Positioned.fill(
                    child:
                        newsModel.image != null && newsModel.image!.isNotEmpty
                        ? Image.network(
                            newsModel.image!,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) =>
                                const Icon(Icons.image_not_supported),
                          )
                        : const Icon(Icons.image_not_supported),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                color: AppColor.primary400,
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          size: 14,
                          color: AppColor.gray,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            formatDate(newsModel.pubDate),
                            style: AppTextStyle.bodySm,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    Text(
                      newsModel.title ?? '-',
                      style: AppTextStyle.titleMd,
                      maxLines: 2,
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 8),

                    Expanded(
                      child: Text(
                        newsModel.description ?? '-',
                        style: AppTextStyle.bodyMd,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    const SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        OpenNews.openUrl(context, newsModel.link);
                      },
                      child: Text(
                        'Baca Selengkapnya',
                        style: TextStyle(
                          color: AppColor.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
