import 'package:dio/dio.dart';
import 'package:edwres_app/core/config/carousel_cache.dart';
import 'package:edwres_app/data/data.dart';
import 'package:edwres_app/models/models.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EntrepreneurshipRepository {
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

  final CarouselCache _cache;

  EntrepreneurshipRepository({required CarouselCache cache}) : _cache = cache;

  String get api => dotenv.get('BASE_URL') + ApiEndpoints.entrepreneurship;

  static const String _cacheKey = 'entrepreneurship_data';

  Future<List<EntrepreneurshipModel>> getEntrepreneurship({int? page}) async {
    // Ambil dari cache terlebih dahulu
    final cachedData = _cache.get(_cacheKey);

    if (cachedData != null && cachedData.isNotEmpty) {
      try {
        final data = cachedData
            .map((item) => EntrepreneurshipModel.fromJson(item))
            .toList();

        // Gunakan cache jika belum expired
        if (!_cache.isExpired(_cacheKey)) {
          return data;
        }
      } catch (_) {
        // Jika cache rusak, lanjut request ke API
      }
    }

    // Cache kosong / expired → ambil dari API
    final response = await _dio.get(api);

    if (response.statusCode == 200) {
      final parsed = EntrepreneurshipResponseModel.fromJson(
        Map<String, dynamic>.from(response.data as Map),
      );

      final data = parsed.data ?? [];

      // Simpan SEMUA data ke cache
      await _cache.save(
        key: _cacheKey,
        data: data.map((item) => item.toJson()).toList(),
      );

      return data;
    }

    throw Exception('Gagal memuat data kewirausahaan');
  }

  Future<void> clearCache() async {
    await _cache.clear(_cacheKey);
  }
}
