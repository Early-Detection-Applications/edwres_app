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
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ConsultationCard extends StatelessWidget {
  const ConsultationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFF7A45), // kiri atas
            Color(0xFFFF6A00), // tengah
            Color(0xFFE65100), // kanan bawah
          ],
          stops: [0.0, 0.55, 1.0],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.stethoscope,
                  color: Colors.white,
                  size: 20,
                ),
                const SizedBox(width: 8.0),
                Text('Konsultasi Sistem Pakar', style: AppTextStyle.titleLg),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Silahkan pilih indikator atau gejala yang Anda rasakan untuk mendeteksi kesiapan kerja dan wirausaha Anda.',
              style: AppTextStyle.labelLg,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.detectionHistory);
                },
                icon: const Icon(Icons.history, color: Colors.white),
                label: Text('Riwayat Konsultasi', style: AppTextStyle.labelLg),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF8A65).withOpacity(0.25),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(
                      color: Colors.white.withOpacity(0.35),
                      width: 1,
                    ),
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
