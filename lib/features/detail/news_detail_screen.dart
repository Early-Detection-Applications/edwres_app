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
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class NewsDetailScreen extends StatelessWidget {
  final NewsModel data;
  const NewsDetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "${dotenv.get('URL')}/storage/berita/${data.gambar}";

    return Scaffold(
      backgroundColor: AppColor.primaryBold,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: openWhatsapp,
        backgroundColor: AppColor.green,
        child: const FaIcon(
          FontAwesomeIcons.whatsapp,
          color: AppColor.white,
          size: 32,
        ),
      ),
      drawer: const Drawer(
        backgroundColor: AppColor.primary,
        child: AppDrawer(),
      ),
      body: Column(
        children: [
          const Navbar(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.home, size: 14, color: AppColor.gray),
                        const SizedBox(width: 4),
                        Text('Home', style: TextStyle(color: AppColor.gray)),
                        const SizedBox(width: 4),
                        Icon(Icons.arrow_right, color: AppColor.gray),
                        const SizedBox(width: 4),
                        Text('Berita', style: TextStyle(color: AppColor.gray)),
                        const SizedBox(width: 4),
                        Icon(Icons.arrow_right, color: AppColor.gray),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            data.judul ?? '-',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: AppColor.gray),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Card(
                      elevation: 4,
                      color: AppColor.primary400,
                      margin: EdgeInsets.zero,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Image.network(
                                  imageUrl,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) => Container(
                                    color: Colors.grey.shade300,
                                    child: const Icon(
                                      Icons.image_not_supported,
                                      size: 60,
                                    ),
                                  ),
                                ),
                              ),

                              Positioned(
                                top: 16,
                                left: 16,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColor.primaryBold,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    data.kategori?.namaKategori ?? "-",
                                    style: const TextStyle(
                                      color: AppColor.secondary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// Tanggal & Penulis
                                Row(
                                  children: [
                                    _infoWidget(
                                      Icons.calendar_month,
                                      data.tanggal != null
                                          ? DateFormat(
                                              "dd MMM yyyy",
                                              "id_ID",
                                            ).format(data.tanggal!)
                                          : "-",
                                    ),
                                    const SizedBox(width: 24),
                                    _infoWidget(
                                      Icons.person,
                                      data.user?.nameLengkap ?? "-",
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white10,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.sell,
                                        color: AppColor.secondary,
                                        size: 16,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        data.kategori?.namaKategori ?? "-",
                                        style: AppTextStyle.titleMd.copyWith(
                                          color: AppColor.secondary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 24),
                                Divider(color: Colors.white.withOpacity(.1)),
                                const SizedBox(height: 24),
                                Text(
                                  data.judul ?? '-',
                                  style: AppTextStyle.titleLg,
                                ),
                                const SizedBox(height: 16),
                                Html(
                                  data: data.isiBerita ?? "",
                                  style: {
                                    "body": Style(
                                      color: AppColor.white,
                                      fontSize: FontSize(14),
                                      lineHeight: const LineHeight(1.8),
                                      margin: Margins.zero,
                                      padding: HtmlPaddings.zero,
                                      textAlign: TextAlign.justify,
                                    ),

                                    "p": Style(
                                      margin: Margins.only(bottom: 16),
                                      textAlign: TextAlign.justify,
                                    ),

                                    "strong": Style(
                                      fontWeight: FontWeight.bold,
                                    ),

                                    "em": Style(fontStyle: FontStyle.italic),
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    CommentCard(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _infoWidget(IconData icon, String text) {
  return Row(
    children: [
      Container(
        width: 30,
        height: 30,
        decoration: const BoxDecoration(
          color: Colors.white10,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: AppColor.secondary, size: 16),
      ),
      const SizedBox(width: 10),
      Text(
        text,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
