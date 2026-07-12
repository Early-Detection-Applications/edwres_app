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

import 'package:edwres_app/models/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  SessionManager._();

  static bool isLogin = false;
  static String? username;
  static String? level;

  static Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();

    isLogin = prefs.getBool('is_login') ?? false;
    username = prefs.getString('username');
    level = prefs.getString('level');
  }

  static Future<void> save(UserModel user) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool('is_login', true);
    await prefs.setString('username', user.username!);
    await prefs.setString('level', user.level!);

    isLogin = true;
    username = user.username;
    level = user.level;
  }

  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.clear();

    isLogin = false;
    username = null;
    level = null;
  }
}
