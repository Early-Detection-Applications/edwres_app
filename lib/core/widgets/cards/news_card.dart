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
import 'package:edwres_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';

class NewsCard extends StatelessWidget {
  final NewsModel newsModel;
  const NewsCard({super.key, required this.newsModel});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "${dotenv.get('BASE_URL')}/storage/berita/${newsModel.gambar}";
    return SizedBox(
      height: 340,
      child: Card(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: imageUrl.isNotEmpty == true
                        ? Image.network(
                            imageUrl,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) =>
                                const Icon(Icons.image_not_supported),
                          )
                        : const Icon(Icons.image_not_supported),
                  ),

                  Positioned(
                    top: 12,
                    left: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.primaryBold,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        newsModel.kategori?.namaKategori != null
                            ? newsModel.kategori!.namaKategori!
                            : newsModel.jenisBerita != null
                            ? newsModel.jenisBerita!
                            : '-',
                        style: TextStyle(
                          color: AppColor.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                color: AppColor.primary400,
                padding: const EdgeInsets.fromLTRB(
                  16,
                  16,
                  16,
                  40, // ruang untuk indicator
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsModel.judul ?? "-",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.titleMd,
                    ),
                    const SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRoutes.news, extra: newsModel);
                      },
                      child: Text(
                        "Baca Selengkapnya",
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
