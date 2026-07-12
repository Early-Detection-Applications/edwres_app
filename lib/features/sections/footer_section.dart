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
import 'package:edwres_app/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryBold,
      padding: const EdgeInsets.only(
        top: 32.0,
        left: 16.0,
        right: 16.0,
        bottom: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'EDWRES - Early Detection Work Readiness',
            style: AppTextStyle.titleMd,
          ),
          const SizedBox(height: 16.0),
          Text('Dukungan', style: AppTextStyle.titleMd),
          Text(
            'Butuh bantuan atau informasi lebih lanjut?',
            style: AppTextStyle.labelSm,
          ),
          const SizedBox(height: 16.0),
          ElevatedButton.icon(
            icon: const Icon(Icons.support_agent, color: AppColor.white),
            onPressed: () {
              GoRouter.of(context).push(AppRoutes.contact);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.secondary,
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 8.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            label: Text(
              'Hubungi Kami',
              style: AppTextStyle.bodyMd.copyWith(
                color: AppColor.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const Divider(color: Colors.grey, thickness: 0.5),
          const SizedBox(height: 16.0),
          Center(
            child: Text(
              '© ${DateTime.now().year} EDWRES. All rights reserved.',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
        ],
      ),
    );
  }
}
