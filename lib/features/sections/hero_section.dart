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
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HeroBackground(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.primary,

                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.verified, color: AppColor.secondary),
                        const SizedBox(width: 4.0),
                        Text(
                          'Sistem Sertifikasi & Asesmen',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColor.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              Text(
                AppStrings.heroTitle,
                style: AppTextStyle.headlineMd,
                textAlign: TextAlign.center,
              ),
              Text(
                'System',
                style: TextStyle(
                  color: AppColor.secondary,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  height: 1.28,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                AppStrings.heroDescription,
                style: AppTextStyle.bodyLg,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      SessionManager.isLogin
                          ? ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Fitur belum tersedia. Sedang dalam proses pengembangan',
                                ),
                              ),
                            )
                          : ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Silahkan login terlebih dahulu!',
                                ),
                              ),
                            );
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        AppColor.secondary,
                      ),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    child: Text(
                      'Mulai Konsultasi',
                      style: AppTextStyle.titleMd,
                    ),
                  ),
                ),
              ),
              // TODO Revert is use
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 8),
              //   child: SizedBox(
              //     width: double.infinity,
              //     child: ElevatedButton(
              //       onPressed: () {
              //         ScaffoldMessenger.of(context).showSnackBar(
              //           SnackBar(
              //             content: Text('Sedang dalam proses pengembangan'),
              //           ),
              //         );
              //       },
              //       style: ButtonStyle(
              //         backgroundColor: WidgetStatePropertyAll(
              //           Colors.transparent.withValues(alpha: 0),
              //         ),
              //         shape: WidgetStatePropertyAll(
              //           RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(8),
              //           ),
              //         ),
              //       ),
              //       child: Text(
              //         'Pelajari Selengkapnya',
              //         style: AppTextStyle.titleMd,
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}
