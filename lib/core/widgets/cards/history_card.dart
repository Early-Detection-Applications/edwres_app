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
import 'package:edwres_app/models/detection_history/detection_history.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HistoryCard extends StatelessWidget {
  final List<DetectionHistoryModel> data;
  const HistoryCard({super.key, this.data = const []});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Text(data.length.toString(), style: AppTextStyle.headlineLg),
          const SizedBox(height: 8),
          Text('Riwayat Konsultasi', style: AppTextStyle.labelMd),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF2E7D32),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            width: double.infinity,
            child: InkWell(
              onTap: () {
                GoRouter.of(context).pushNamed(AppRoutes.detectionHistory);
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'More Info',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.labelLg,
                    ),
                    const SizedBox(width: 4),
                    Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Colors.white,
                    ),
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
