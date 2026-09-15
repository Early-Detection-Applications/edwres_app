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

// ignore_for_file: deprecated_member_use

import 'package:edwres_app/app/app.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConsultationTabContent extends StatelessWidget {
  const ConsultationTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        _ConsultationPart(title: 'Bagian 1', section: 1),
        _ConsultationPart(title: 'Bagian 2', section: 2),
        _ConsultationPart(title: 'Bagian 3', section: 3),
        _ConsultationPart(title: 'Bagian 4', section: 4),
      ],
    );
  }
}

class _ConsultationPart extends StatelessWidget {
  final String title;
  final int section;

  const _ConsultationPart({required this.title, required this.section});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConsultationBloc, ConsultationState>(
      builder: (context, state) {
        final indicators = getIndicatorsBySection(state.indicators, section);

        return ListView.separated(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          physics: const BouncingScrollPhysics(),

          // +1 untuk navigation button
          itemCount: indicators.length + 1,

          separatorBuilder: (_, __) => const SizedBox(height: 12),

          itemBuilder: (context, index) {
            // ============================================================
            // NAVIGATION BUTTON
            // ============================================================
            if (index == indicators.length) {
              return _buildNavigationButtons(context);
            }

            // ============================================================
            // QUESTION
            // ============================================================
            final indicator = indicators[index];
            final questionId = indicator.kodeIndikator ?? '';

            final checked = state.selectedQuestionIds.contains(questionId);

            return InkWell(
              borderRadius: BorderRadius.circular(4),
              onTap: () {
                context.read<ConsultationBloc>().add(
                  ConsultationEvent.toggleQuestion(questionId),
                );
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFF0F4B58),
                  border: Border.all(
                    color: checked
                        ? AppColor.secondary.withOpacity(.5)
                        : Colors.white.withOpacity(.06),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.2,
                      child: Checkbox(
                        value: checked,
                        onChanged: (_) {
                          context.read<ConsultationBloc>().add(
                            ConsultationEvent.toggleQuestion(questionId),
                          );
                        },
                        activeColor: const Color(0xFF2F80ED),
                        checkColor: Colors.white,
                        side: const BorderSide(color: Colors.white, width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),

                    const SizedBox(width: 20),

                    Expanded(
                      child: Text(
                        indicator.namaIndikator ?? '',
                        style: TextStyle(
                          color: checked
                              ? Colors.white
                              : Colors.white.withOpacity(.85),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  // ============================================================
  // NAVIGATION BUTTONS
  // ============================================================

  Widget _buildNavigationButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 24),
      child: Row(
        children: [
          // ==========================================================
          // SEBELUMNYA
          // ==========================================================
          if (section > 1)
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () {
                  final controller = DefaultTabController.of(context);

                  controller.animateTo(section - 2);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 18,
                  color: Colors.white,
                ),
                label: const Text(
                  'Sebelumnya',
                  style: TextStyle(color: Colors.white),
                ),
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColor.primary,
                  side: BorderSide(
                    color: AppColor.white.withOpacity(.35),
                    width: 1.2,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

          if (section > 1 && section < 4) const SizedBox(width: 12),

          // ==========================================================
          // SELANJUTNYA
          // ==========================================================
          if (section < 4)
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  final controller = DefaultTabController.of(context);

                  controller.animateTo(section);
                },
                icon: const Icon(Icons.arrow_forward, size: 18),
                label: const Text('Selanjutnya'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.secondary,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  // ============================================================
  // GET INDICATORS BY SECTION
  // ============================================================

  List<IndicatorModel> getIndicatorsBySection(
    List<IndicatorModel> data,
    int section,
  ) {
    final total = data.length;

    var chunkSize = (total / 4).ceil();

    if (chunkSize.isOdd && total > chunkSize) {
      chunkSize++;
    }

    final start = (section - 1) * chunkSize;

    if (start >= total) {
      return [];
    }

    final end = (start + chunkSize > total) ? total : (start + chunkSize);

    return data.sublist(start, end);
  }
}
