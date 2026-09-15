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
import 'package:edwres_app/core/config/carousel_cache.dart';
import 'package:edwres_app/data/data.dart';
import 'package:edwres_app/models/models.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NewsRepository {
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

  final CarouselCache _cache;

  NewsRepository({required CarouselCache cache}) : _cache = cache;

  String get api => dotenv.get('BASE_URL') + ApiEndpoints.news;

  Future<NewsListResponseModel> getNews({int? page}) async {
    final currentPage = page ?? 1;

    final cacheKey = 'news_page_$currentPage';

    // ============================================================
    // CEK CACHE
    // ============================================================

    final cachedData = _cache.get(cacheKey);

    if (cachedData != null &&
        cachedData.isNotEmpty &&
        !_cache.isExpired(cacheKey)) {
      try {
        final data = cachedData
            .map((item) => NewsModel.fromJson(item))
            .toList();

        return NewsListResponseModel(
          success: true,
          message: 'Data berita dari cache',
          data: data,
        );
      } catch (_) {
        // Cache tidak valid, lanjut request API
      }
    }

    // ============================================================
    // REQUEST API
    // ============================================================

    final response = await _dio.get(
      api,
      queryParameters: {'page': currentPage, 'per_page': 5},
    );

    if (response.statusCode == 200) {
      final result = NewsListResponseModel.fromJson(response.data);

      // ==========================================================
      // SIMPAN DATA HALAMAN KE CACHE
      // ==========================================================

      final data = result.data ?? [];

      await _cache.save(
        key: cacheKey,
        data: data.map((item) => item.toJson()).toList(),
      );

      return result;
    }

    throw Exception('Gagal memuat data');
  }

  // ============================================================
  // CLEAR CACHE SEMUA HALAMAN NEWS
  // ============================================================

  Future<void> clearCache() async {
    for (int page = 1; page <= 100; page++) {
      await _cache.clear('news_page_$page');
    }
  }
}
