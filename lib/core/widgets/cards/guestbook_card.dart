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
import 'package:edwres_app/models/guestbook/guestbook.dart';
import 'package:flutter/material.dart';

class GuestbookCard extends StatelessWidget {
  const GuestbookCard({super.key, required this.guestbook});

  final GuestbookModel guestbook;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 30,
            decoration: BoxDecoration(
              color: AppColor.primaryBold,
              borderRadius: BorderRadius.circular(14),
            ),
            alignment: Alignment.center,
            child: Text(
              (guestbook.nama ?? '-').substring(0, 1).toUpperCase(),
              style: const TextStyle(
                color: AppColor.secondary,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        guestbook.nama ?? '-',
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.titleSm.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),

                    Text(
                      '• BARU SAJA',
                      style: AppTextStyle.bodySm.copyWith(
                        color: Colors.white38,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                Text(
                  guestbook.message ?? '',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.bodyMd.copyWith(
                    color: Colors.white70,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
