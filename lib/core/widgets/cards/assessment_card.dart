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
import 'package:edwres_app/models/assessment/assessment.dart';
import 'package:flutter/material.dart';

class AssessmentCard extends StatelessWidget {
  final AssessmentModel data;

  const AssessmentCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Icon(
              getIcon(data.icon),
              color: AppColor.secondary,
              size: 20,
            ),
          ),

          const SizedBox(width: 8),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title ?? '-',
                  style: AppTextStyle.bodyLg.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  data.description ?? '-',
                  style: AppTextStyle.bodyMd.copyWith(height: 1.6),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

IconData getIcon(String? icon) {
  switch (icon) {
    case 'psychology':
      return Icons.psychology;

    case 'handyman':
      return Icons.handyman;

    case 'pie_chart':
      return Icons.pie_chart;

    case 'chat':
      return Icons.chat;

    case 'work_outline':
      return Icons.work_outline;

    case 'school':
      return Icons.school;

    case 'show_chart':
      return Icons.show_chart;

    default:
      return Icons.chat_bubble;
  }
}
