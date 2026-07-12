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
import 'package:flutter/material.dart';

class CommentCard extends StatefulWidget {
  const CommentCard({super.key});

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.primary400,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.chat, color: AppColor.secondary, size: 20),
                const SizedBox(width: 8.0),
                Text('Komentar', style: AppTextStyle.titleLg),
                const SizedBox(width: 8.0),
                Text(
                  '(0)',
                  style: AppTextStyle.titleLg.copyWith(
                    color: AppColor.secondary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.border),
                borderRadius: BorderRadius.circular(8),
                color: AppColor.primary400,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 8,
                ),
                child: Text(
                  'Belum ada komentar. Jadilah yang pertama memberikan pendapat!',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white.withOpacity(.1)),
            const SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.secondary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ingin ikut berdiskusi? Silahkan login terlebih dahulu',
                      style: TextStyle(color: AppColor.white),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 8.0),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            AppColor.secondary,
                          ),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Sedang dalam proses pengembangan'),
                            ),
                          );
                        },
                        child: Text(
                          'Login Sekarang',
                          style: AppTextStyle.titleSm,
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
