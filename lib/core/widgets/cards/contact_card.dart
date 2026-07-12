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

class ContactCard extends StatelessWidget {
  final AssessmentModel data;
  const ContactCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 340,
      child: Card(
        color: AppColor.primary400,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColor.secondary.withValues(alpha: 0.2),
                ),
                child: Icon(Icons.person, color: AppColor.secondary),
              ),
              const SizedBox(height: 24.0),
              Text(
                data.title ?? '-',
                style: AppTextStyle.titleLg,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24.0),
              Text(
                data.description ?? '-',
                style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24.0),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Fitur ini belum tersedia. Masih dalam proses pengembangan.',
                        ),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFF1F5B68),
                    side: BorderSide(
                      color: Colors.white.withValues(alpha: 0.12),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email, color: AppColor.secondary),
                      SizedBox(width: 16),
                      Text(
                        'Kirim Email',
                        style: TextStyle(
                          color: AppColor.secondary,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
