import 'package:dio/dio.dart';
import 'package:edwres_app/data/api_endpoints.dart';
import 'package:edwres_app/models/komentar/komentar_model.dart';
import 'package:edwres_app/models/models.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class KomentarRepository {
  final Dio _dio = Dio()
    ..interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        responseHeader: false,
        requestHeader: false,
        error: true,
      ),
    );

  final String api = dotenv.get('BASE_URL') + ApiEndpoints.komentar;

  Future<List<KomentarModel>> getKomentar({required int idBerita}) async {
    final response = await _dio.get(
      api,
      queryParameters: {'id_berita': idBerita},
    );

    if (response.statusCode == 200) {
      final json = Map<String, dynamic>.from(response.data as Map);

      final data = json['data'];

      if (data is List) {
        return data
            .map(
              (item) => KomentarModel.fromJson(Map<String, dynamic>.from(item)),
            )
            .toList();
      }

      return [];
    }

    throw Exception('Gagal memuat komentar');
  }

  Future<KomentarModel> addKomentar({
    required int idBerita,
    required int idUser,
    required String komentar,
  }) async {
    final response = await _dio.post(
      api,
      data: {'id_berita': idBerita, 'id_user': idUser, 'komentar': komentar},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final json = Map<String, dynamic>.from(response.data as Map);

      final data = json['data'];

      if (data is Map) {
        return KomentarModel.fromJson(Map<String, dynamic>.from(data));
      }
    }

    throw Exception('Gagal menambahkan komentar');
  }
}
