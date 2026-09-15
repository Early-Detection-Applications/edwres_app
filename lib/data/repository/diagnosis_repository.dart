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

import 'package:dio/dio.dart';
import 'package:edwres_app/data/data.dart';
import 'package:edwres_app/models/models.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:path_provider/path_provider.dart';

class DiagnosisRepository {
  final Dio _dio = Dio()
    ..interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        requestHeader: false,
        error: true,
      ),
    );

  Future<DiagnosisResponseModel> diagnosis({
    required String idUser,
    required List<String> indikator,
  }) async {
    final formData = FormData();

    formData.fields.add(MapEntry('id_user', idUser));

    for (final kode in indikator) {
      formData.fields.add(MapEntry('kode_indikator[]', kode));
    }

    final response = await _dio.post(
      dotenv.get('BASE_URL') + ApiEndpoints.consultation,
      data: formData,
    );

    try {
      return DiagnosisResponseModel.fromJson(
        response.data as Map<String, dynamic>,
      );
    } catch (e, stackTrace) {
      print('====================');
      print(e);
      print(stackTrace);
      print(response.data);
      print('====================');
      rethrow;
    }
  }

  Future<String> getPdfUrl({required int riwayatId}) async {
    final response = await _dio.get(
      // TODO: Revert this
      dotenv.get('BASE_URL') + ApiEndpoints.diagnosisPdf(riwayatId),
      // 'https://edwres.sikolog.biz.id${ApiEndpoints.diagnosisPdf(riwayatId)}',
    );

    final data = response.data as Map<String, dynamic>;

    if (data['success'] != true) {
      throw Exception(data['message'] ?? 'PDF tidak tersedia.');
    }

    final pdfUrl = data['data']?['pdf_url'] as String?;

    if (pdfUrl == null || pdfUrl.isEmpty) {
      throw Exception('URL PDF tidak tersedia.');
    }

    return pdfUrl;
  }

  Future<String> downloadPdf({required int riwayatId}) async {
    print('========================================');
    print('DOWNLOAD PDF START');
    print('RIWAYAT ID: $riwayatId');
    print('========================================');

    try {
      // 1. Ambil URL PDF
      final response = await _dio.get(
        dotenv.get('BASE_URL') + ApiEndpoints.diagnosisPdf(riwayatId),
      );

      print('PDF URL API RESPONSE:');
      print(response.data);

      final data = response.data as Map<String, dynamic>;

      final success = data['success'] == true;

      if (!success) {
        throw Exception(data['message'] ?? 'Gagal mendapatkan URL PDF');
      }

      final responseData = data['data'] as Map<String, dynamic>?;

      final pdfUrl = responseData?['pdf_url'] as String?;

      if (pdfUrl == null || pdfUrl.isEmpty) {
        throw Exception('PDF URL tidak tersedia.');
      }

      print('========================================');
      print('PDF URL: $pdfUrl');
      print('========================================');

      // 2. Tentukan lokasi penyimpanan
      final directory = await getApplicationDocumentsDirectory();

      final filePath = '${directory.path}/EDWRES_Hasil_Deteksi_$riwayatId.pdf';

      print('FILE PATH: $filePath');

      // 3. Download PDF
      print('========================================');
      print('MEMULAI DIO DOWNLOAD...');
      print('========================================');

      final downloadResponse = await _dio.download(
        pdfUrl,
        filePath,
        onReceiveProgress: (received, total) {
          if (total > 0) {
            final progress = received / total * 100;

            print('PDF DOWNLOAD: ${progress.toStringAsFixed(1)}%');
          } else {
            print('PDF DOWNLOAD: $received bytes');
          }
        },
      );

      print('========================================');
      print('DOWNLOAD RESPONSE: ${downloadResponse.statusCode}');
      print('DOWNLOAD SELESAI');
      print('FILE: $filePath');
      print('========================================');

      return filePath;
    } catch (e, stackTrace) {
      print('========================================');
      print('DOWNLOAD PDF ERROR');
      print(e);
      print(stackTrace);
      print('========================================');

      rethrow;
    }
  }
}
