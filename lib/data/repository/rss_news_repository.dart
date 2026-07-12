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
import 'package:edwres_app/models/news/news.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class RssNewsRepository {
  final Dio _dio = Dio()
    ..interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
        responseHeader: false,
        requestHeader: false,
        error: true,
      ),
    );

  final String api = dotenv.get('BASE_URL') + ApiEndpoints.rssNews;
  Future<List<RssNewsModel>> getRssNews() async {
    final response = await _dio.get(api);

    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => RssNewsModel.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    throw Exception('Gagal memuat data');
  }
}
