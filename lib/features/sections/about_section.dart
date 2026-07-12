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
import 'package:flutter_bloc/flutter_bloc.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColor.primaryBold,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24.0),
            Text(
              'TENTANG KAMI',
              style: TextStyle(
                fontSize: 16.0,
                color: AppColor.secondary,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 12.0),
            Text('Apa itu EDWRES?', style: AppTextStyle.titleLg),
            const SizedBox(height: 16.0),
            Text(
              AppStrings.description,
              style: AppTextStyle.bodyMd,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16.0),
            Text(
              'Pengembangan EDWRES ini meliputi:',
              style: TextStyle(
                color: AppColor.secondary,
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 8.0),
            BlocBuilder<AssessmentBloc, AssessmentState>(
              builder: (context, state) {
                if (state.status.isLoading) {
                  return const CircularProgressIndicator();
                }

                return Column(
                  spacing: 16,
                  children: state.data.map((item) {
                    return AssessmentCard(data: item);
                  }).toList(),
                );
              },
            ),
            const SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }
}
