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
import 'package:edwres_app/core/core.dart';
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
        return ListView.separated(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            /// sementara id dibuat unik tiap section
            /// nanti ganti dengan question.id dari API
            final questionId = ((section - 1) * 10) + index + 1;

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
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF0F4B58),
                  border: Border.all(
                    color: checked
                        ? AppColor.secondary.withOpacity(.5)
                        : Colors.white.withOpacity(.06),
                  ),
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
                        "Saya berusaha tenang dalam mencari solusi permasalahan",
                        style: TextStyle(
                          color: checked
                              ? Colors.white
                              : Colors.white.withOpacity(.85),
                          fontSize: 16,
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
}
