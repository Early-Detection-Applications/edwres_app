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
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:open_filex/open_filex.dart';

class ConsultationResultScreen extends StatelessWidget {
  final DiagnosisResponseModel diagnosis;

  const ConsultationResultScreen({super.key, required this.diagnosis});

  @override
  Widget build(BuildContext context) {
    final hasil = diagnosis.data?.hasil ?? {};

    final results = hasil.entries.toList()
      ..sort((a, b) => (b.value.cf ?? 0).compareTo(a.value.cf ?? 0));

    return Scaffold(
      backgroundColor: AppColor.primary400,

      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppColor.green,
        onPressed: openWhatsapp,
        child: const FaIcon(
          FontAwesomeIcons.whatsapp,
          color: Colors.white,
          size: 30,
        ),
      ),

      drawer: const Drawer(
        backgroundColor: AppColor.primary,
        child: AppDrawer(),
      ),

      body: BlocListener<ConsultationBloc, ConsultationState>(
        listener: (context, state) async {
          if (state.status == ConsultationStatus.pdfReady &&
              state.pdfPath != null) {
            await OpenFilex.open(state.pdfPath!);
          }

          if (state.status == ConsultationStatus.error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.error)));
          }
        },

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Navbar(),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 120),
                child: Column(
                  children: [
                    _buildHeader(),

                    const SizedBox(height: 0),

                    _buildResultTable(context, results),

                    const SizedBox(height: 32),

                    _buildActionButtons(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // HEADER
  // ============================================================

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: const BoxDecoration(
        color: Color(0xFF00C853),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4),
          topRight: Radius.circular(4),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.20),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Center(
              child: FaIcon(
                FontAwesomeIcons.chartSimple,
                color: Colors.white,
                size: 14,
              ),
            ),
          ),

          const SizedBox(width: 20),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('HASIL DIAGNOSIS', style: AppTextStyle.titleMd),

                const SizedBox(height: 3),

                Text(
                  'Berdasarkan indikator yang Anda berikan',
                  style: AppTextStyle.labelSm,
                ),
              ],
            ),
          ),

          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.18),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: FaIcon(
                FontAwesomeIcons.check,
                color: Color(0xFF087A48),
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // RESULT TABLE
  // ============================================================

  Widget _buildResultTable(
    BuildContext context,
    List<MapEntry<String, DiagnosisResultModel>> results,
  ) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Color(0xFF0D5260)),
      child: Column(
        children: [
          _buildTableHeader(),

          if (results.isEmpty)
            const Padding(
              padding: EdgeInsets.all(40),
              child: Text(
                'Tidak ada hasil diagnosis.',
                style: TextStyle(color: Colors.white),
              ),
            ),

          ...results.asMap().entries.map((entry) {
            final index = entry.key;
            final result = entry.value;

            return _buildResultRow(
              context: context,
              ranking: index + 1,
              kodeEas: entry.value.key,
              result: result.value,
              isLast: index == results.length - 1,
            );
          }),
        ],
      ),
    );
  }

  // ============================================================
  // TABLE HEADER
  // ============================================================

  Widget _buildTableHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: const BoxDecoration(color: Color(0xFF094857)),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 42,
            child: Text(
              'NO',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Text(
              'KESIAPAN / KOMPETENSI',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.2,
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Text(
              'SKOR (CF)',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),

          SizedBox(
            width: 48,
            child: Text(
              'AKSI',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // RESULT ROW
  // ============================================================

  Widget _buildResultRow({
    required BuildContext context,
    required int ranking,
    required String kodeEas,
    required DiagnosisResultModel result,
    required bool isLast,
  }) {
    final percentage = result.percentage ?? 0;
    final cf = result.cf ?? 0;

    final scoreColor = _getScoreColor(percentage, result.category);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: ranking.isOdd
            ? const Color(0xFF105B68)
            : const Color(0xFF155F6C),
        border: isLast
            ? null
            : Border(bottom: BorderSide(color: Colors.white.withOpacity(.08))),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 42,
            child: Text(
              '$ranking',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF9BB7C1),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  result.eas?.namaEas ?? 'Tidak diketahui',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.labelMd.copyWith(
                    color: AppColor.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  'CODE: $kodeEas',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.labelSm.copyWith(
                    color: const Color(0xFF9BB7C1),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  constraints: const BoxConstraints(minWidth: 76),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: scoreColor,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    '${percentage.toStringAsFixed(1)}% '
                    '(${result.category ?? '-'})',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.labelSm.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  'CONFIDENCE: ${cf.toStringAsFixed(3)}',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.labelSm.copyWith(
                    color: const Color(0xFF9BB7C1),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            width: 40,
            child: IconButton(
              tooltip: 'Lihat detail',
              onPressed: () => _showDetail(context, result),
              icon: const FaIcon(FontAwesomeIcons.eye, size: 15),
              color: AppColor.secondary,
              style: IconButton.styleFrom(
                backgroundColor: Colors.white.withOpacity(.08),
                padding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // ACTION BUTTONS
  // ============================================================

  Widget _buildActionButtons(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 16,
      runSpacing: 12,
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.consultation);
            },
            icon: const FaIcon(FontAwesomeIcons.rotateLeft, size: 16),
            label: Text('Ulangi Diagnosis', style: AppTextStyle.labelLg),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF125667),
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),

        BlocBuilder<ConsultationBloc, ConsultationState>(
          builder: (context, state) {
            final isDownloading =
                state.status == ConsultationStatus.downloadingPdf;

            return SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: isDownloading
                    ? null
                    : () {
                        final riwayatId = diagnosis.data?.riwayatId;

                        if (riwayatId == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('ID riwayat tidak ditemukan.'),
                            ),
                          );

                          return;
                        }

                        context.read<ConsultationBloc>().add(
                          ConsultationEvent.downloadPdf(riwayatId: riwayatId),
                        );
                      },
                icon: isDownloading
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const FaIcon(FontAwesomeIcons.print, size: 16),
                label: Text(
                  isDownloading ? 'Mengunduh PDF' : 'Cetak Hasil Laporan',
                  style: AppTextStyle.labelLg,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.secondary,
                  foregroundColor: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            );
          },
        ),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              GoRouter.of(context).pushReplacementNamed(AppRoutes.home);
            },
            icon: const FaIcon(FontAwesomeIcons.house, size: 16),
            label: Text('Kembali Ke Beranda', style: AppTextStyle.labelLg),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF125667),
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ============================================================
  // DETAIL
  // ============================================================

  void _showDetail(BuildContext context, DiagnosisResultModel result) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColor.primary400,
      builder: (context) {
        final eas = result.eas;

        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: .75,
          maxChildSize: .95,
          minChildSize: .5,
          builder: (context, controller) {
            return SingleChildScrollView(
              controller: controller,
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 42,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.25),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  Text(
                    eas?.namaEas ?? 'Detail Diagnosis',
                    style: AppTextStyle.headlineSm.copyWith(
                      color: AppColor.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    'Kode: ${eas?.kodeEas ?? '-'}',
                    style: AppTextStyle.bodySm.copyWith(
                      color: const Color(0xFF91B2BB),
                      letterSpacing: 0.2,
                    ),
                  ),

                  const SizedBox(height: 18),

                  Row(
                    children: [
                      _scoreCard('CF', (result.cf ?? 0).toStringAsFixed(3)),

                      const SizedBox(width: 12),

                      _scoreCard(
                        'SKOR',
                        '${(result.percentage ?? 0).toStringAsFixed(1)}%',
                        color: _getScoreColor(
                          result.percentage ?? 0,
                          result.category,
                        ),
                      ),

                      const SizedBox(width: 12),

                      _scoreCard(
                        'KATEGORI',
                        result.category ?? '-',
                        color: _getScoreColor(
                          result.percentage ?? 0,
                          result.category,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  _detailSectionTitle(
                    'Deskripsi (${eas?.namaEas ?? 'Variabel'})',
                  ),

                  const SizedBox(height: 8),

                  _buildRichText(eas?.keterangan),

                  const SizedBox(height: 20),

                  _detailSectionTitle('Rekomendasi & Solusi'),

                  const SizedBox(height: 10),

                  if ((eas?.tips ?? []).isEmpty)
                    Text(
                      'Belum ada rekomendasi untuk variabel ini.',
                      style: AppTextStyle.bodyMd.copyWith(
                        color: const Color(0xFFD0DEE2),
                      ),
                    ),

                  ...(eas?.tips ?? []).map(
                    (tip) => Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.fromLTRB(14, 12, 14, 10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.05),
                        border: Border.all(color: Colors.white10),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tip.namaTips ?? 'Rekomendasi',
                            style: AppTextStyle.titleSm.copyWith(
                              color: AppColor.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),

                          const SizedBox(height: 5),

                          _buildRichText(tip.keterangan),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  // ============================================================
  // DETAIL SECTION TITLE
  // ============================================================

  Widget _detailSectionTitle(String title) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 20,
          decoration: BoxDecoration(
            color: AppColor.secondary,
            borderRadius: BorderRadius.circular(4),
          ),
        ),

        const SizedBox(width: 9),

        Expanded(
          child: Text(
            title,
            style: AppTextStyle.titleMd.copyWith(
              color: AppColor.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }

  // ============================================================
  // RICH TEXT
  // ============================================================

  Widget _buildRichText(String? html) {
    if (html == null || html.trim().isEmpty) {
      return Text(
        '-',
        style: AppTextStyle.bodyMd.copyWith(color: const Color(0xFFD0DEE2)),
      );
    }
    const textColor = Color(0xFFD0DEE2);

    return Html(
      data: html,
      style: {
        'body': Style(
          color: const Color(0xFFD0DEE2),
          fontSize: FontSize(14),
          lineHeight: const LineHeight(1.45),
          margin: Margins.zero,
          padding: HtmlPaddings.zero,
          textAlign: TextAlign.justify,
        ),

        'p': Style(
          margin: Margins.only(bottom: 8),
          textAlign: TextAlign.justify,
          color: textColor,
        ),

        'ol': Style(
          margin: Margins.only(left: 4, bottom: 4),
          padding: HtmlPaddings.zero,
          color: textColor,
        ),

        'ul': Style(
          margin: Margins.only(left: 4, bottom: 4),
          padding: HtmlPaddings.zero,
          color: textColor,
        ),

        'li': Style(
          margin: Margins.only(bottom: 5),
          textAlign: TextAlign.justify,
          color: textColor,
        ),

        'strong': Style(fontWeight: FontWeight.w800, color: textColor),

        'b': Style(fontWeight: FontWeight.w800, color: textColor),
      },
    );
  }

  // ============================================================
  // SCORE CARD
  // ============================================================

  Widget _scoreCard(String title, String value, {Color? color}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: color != null
              ? color.withOpacity(.18)
              : Colors.white.withOpacity(.06),
          borderRadius: BorderRadius.circular(8),
          border: color != null
              ? Border.all(color: color.withOpacity(.35))
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: color ?? const Color(0xFF8DAEB8),
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            Text(
              value,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: color ?? Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // SCORE COLOR
  // ============================================================

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
