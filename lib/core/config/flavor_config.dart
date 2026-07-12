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

import 'package:edwres_app/core/config/config.dart';

class FlavorConfig {
  final Flavor flavor;
  final String appName;
  final String apiBaseUrl;

  static FlavorConfig? _instance;

  FlavorConfig._({
    required this.flavor,
    required this.appName,
    required this.apiBaseUrl,
  });

  factory FlavorConfig({
    required Flavor flavor,
    required String appName,
    required String apiBaseUrl,
  }) {
    _instance ??= FlavorConfig._(
      flavor: flavor,
      appName: appName,
      apiBaseUrl: apiBaseUrl,
    );
    return _instance!;
  }

  static FlavorConfig get instance => _instance!;
}
