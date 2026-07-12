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

class MitraSection extends StatelessWidget {
  const MitraSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColor.gray,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24.0),
        child: Column(
          children: [
            Text(
              'MITRA KAMI',
              style: TextStyle(
                color: AppColor.primary,
                fontWeight: FontWeight.w700,
                fontSize: 12.0,
              ),
            ),
            const SizedBox(height: 8.0),
            const LogoMarquee(),
          ],
        ),
      ),
    );
  }
}
