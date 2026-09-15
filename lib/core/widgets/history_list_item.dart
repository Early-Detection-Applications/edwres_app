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
import 'package:edwres_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HistoryListItem extends StatelessWidget {
  final DetectionHistoryModel history;

  const HistoryListItem({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    final hasil = history.hasil ?? {};
    final sortedResults = hasil.entries.toList()
      ..sort((a, b) => (b.value.cf ?? 0).compareTo(a.value.cf ?? 0));
    final highest = sortedResults.isNotEmpty ? sortedResults.first.value : null;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColor.primary400,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColor.border.withOpacity(0.7)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 14,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: AppColor.secondary.withOpacity(0.16),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.history_rounded,
                  color: AppColor.secondary,
                  size: 22,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Konsultasi #${history.riwayatId ?? '-'}',
                  style: AppTextStyle.titleMd.copyWith(
                    color: AppColor.white,
                    fontSize: 17,
                    height: 1.2,
                    letterSpacing: 0.15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Icon(Icons.chevron_right_rounded, color: AppColor.gray),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: AppColor.primaryBold,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.schedule_rounded,
                  color: AppColor.gray,
                  size: 15,
                ),
                const SizedBox(width: 6),
                Text(
                  _formatDate(history.tanggal),
                  style: AppTextStyle.bodySm.copyWith(
                    color: AppColor.gray,
                    fontSize: 11,
                    letterSpacing: 0.1,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          if (highest != null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: AppColor.primaryBold,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColor.border.withOpacity(0.5)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HASIL DIAGNOSIS TERTINGGI',
                    style: AppTextStyle.labelMd.copyWith(
                      color: AppColor.gray,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.8,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    highest.eas?.namaEas ?? 'Tidak diketahui',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.titleLg.copyWith(
                      color: AppColor.white,
                      fontSize: 20,
                      height: 1.2,
                      letterSpacing: 0.05,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color:
                              highest.percentage != null &&
                                  highest.category != null
                              ? _getScoreColor(
                                  highest.percentage!,
                                  highest.category,
                                )
                              : AppColor.primary,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Text(
                          '${(highest.percentage ?? 0).toStringAsFixed(1)}%',
                          style: AppTextStyle.titleSm.copyWith(
                            color: AppColor.white,
                            fontSize: 13,
                            letterSpacing: 0.2,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          highest.category ?? '-',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.bodyMd.copyWith(
                            color: AppColor.gray,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          else
            Text(
              'Tidak ada hasil diagnosis.',
              style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
            ),
          const SizedBox(height: 12),
          const Divider(color: Colors.white12, height: 1),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () => _openDetail(context, history),
              icon: const Icon(Icons.visibility_outlined, size: 18),
              label: const Text('Lihat Detail'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.secondary,
                foregroundColor: AppColor.white,
                elevation: 0,
                textStyle: AppTextStyle.titleSm.copyWith(
                  color: AppColor.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.15,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _openDetail(BuildContext context, DetectionHistoryModel history) {
    final diagnosis = DiagnosisResponseModel(
      success: true,
      message: 'Riwayat diagnosis berhasil.',
      data: DiagnosisModel(
        riwayatId: history.riwayatId,
        tanggal: history.tanggal,
        hasil: history.hasil,
      ),
    );

    context.pushNamed(AppRoutes.consultationResult, extra: diagnosis);
  }

  String _formatDate(String? value) {
    if (value == null || value.isEmpty) return '-';

    try {
      final date = DateTime.parse(value);
      return '${date.day.toString().padLeft(2, '0')}/'
          '${date.month.toString().padLeft(2, '0')}/'
          '${date.year} '
          '${date.hour.toString().padLeft(2, '0')}:'
          '${date.minute.toString().padLeft(2, '0')}';
    } catch (_) {
      return value;
    }
  }

  Color _getScoreColor(double percentage, String? category) {
    final normalizedCategory = category?.toLowerCase() ?? '';

    if (normalizedCategory.contains('kurang') || percentage < 50) {
      return const Color(0xFFE53935);
    }

    if (normalizedCategory.contains('cukup') || percentage < 70) {
      return const Color.fromARGB(255, 240, 195, 14);
    }

    return const Color(0xFF00A86B);
  }
}
