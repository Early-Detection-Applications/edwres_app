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

import 'package:edwres_app/app/theme/app_color.dart';
import 'package:flutter/material.dart';

abstract final class AppTextStyle {
  const AppTextStyle._();

  // Display
  static const TextStyle displayLg = TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.w700,
    height: 1.12,
    color: AppColor.background,
  );

  static const TextStyle displayMd = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w700,
    height: 1.16,
    color: AppColor.background,
  );

  static const TextStyle displaySm = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 1.22,
    color: AppColor.background,
  );

  // Headline
  static const TextStyle headlineLg = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.25,
    color: AppColor.background,
  );

  static const TextStyle headlineMd = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.28,
    color: AppColor.background,
  );

  static const TextStyle headlineSm = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.33,
    color: AppColor.background,
  );

  // Title
  static const TextStyle titleLg = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    height: 1.27,
    color: AppColor.background,
  );

  static const TextStyle titleMd = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.50,
    color: AppColor.background,
  );

  static const TextStyle titleSm = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.43,
    color: AppColor.background,
  );

  // Body
  static const TextStyle bodyLg = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.50,
    color: AppColor.background,
  );

  static const TextStyle bodyMd = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.43,
    color: AppColor.background,
  );

  static const TextStyle bodySm = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.33,
    color: AppColor.background,
  );

  // Label
  static const TextStyle labelLg = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.43,
    color: AppColor.background,
  );

  static const TextStyle labelMd = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.33,
    color: AppColor.background,
  );

  static const TextStyle labelSm = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 1.45,
    color: AppColor.background,
  );
}
