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

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class CarouselCache {
  static const Duration cacheDuration = Duration(days: 1);

  final SharedPreferences _prefs;

  CarouselCache(this._prefs);

  Future<void> save({
    required String key,
    required List<Map<String, dynamic>> data,
  }) async {
    await _prefs.setString('${key}_data', jsonEncode(data));

    await _prefs.setInt(
      '${key}_timestamp',
      DateTime.now().millisecondsSinceEpoch,
    );
  }

  List<Map<String, dynamic>>? get(String key) {
    final data = _prefs.getString('${key}_data');
    final timestamp = _prefs.getInt('${key}_timestamp');

    if (data == null || timestamp == null) {
      return null;
    }

    try {
      final decoded = jsonDecode(data);

      if (decoded is! List) {
        return null;
      }

      return decoded
          .whereType<Map>()
          .map((item) => Map<String, dynamic>.from(item))
          .toList();
    } catch (_) {
      return null;
    }
  }

  bool isExpired(String key) {
    final timestamp = _prefs.getInt('${key}_timestamp');

    if (timestamp == null) {
      return true;
    }

    final cachedAt = DateTime.fromMillisecondsSinceEpoch(timestamp);

    return DateTime.now().difference(cachedAt) > cacheDuration;
  }

  Future<void> clear(String key) async {
    await _prefs.remove('${key}_data');
    await _prefs.remove('${key}_timestamp');
  }
}
