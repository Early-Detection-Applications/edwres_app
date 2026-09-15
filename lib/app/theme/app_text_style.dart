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
import 'package:google_fonts/google_fonts.dart';

abstract final class AppTextStyle {
  const AppTextStyle._();

  // ============================================================
  // Display
  // ============================================================

  static final TextStyle displayLg = GoogleFonts.poppins(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    height: 1.15,
    color: AppColor.background,
  );

  static final TextStyle displayMd = GoogleFonts.poppins(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 1.20,
    color: AppColor.background,
  );

  static final TextStyle displaySm = GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.25,
    color: AppColor.background,
  );

  // ============================================================
  // Headline
  // ============================================================

  static final TextStyle headlineLg = GoogleFonts.poppins(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.25,
    color: AppColor.background,
  );

  static final TextStyle headlineMd = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.30,
    color: AppColor.background,
  );

  static final TextStyle headlineSm = GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 1.32,
    color: AppColor.background,
  );

  // ============================================================
  // Title
  // ============================================================

  static final TextStyle titleLg = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.30,
    color: AppColor.background,
  );

  static final TextStyle titleMd = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    height: 1.45,
    color: AppColor.background,
  );

  static final TextStyle titleSm = GoogleFonts.poppins(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    height: 1.45,
    color: AppColor.background,
  );

  // ============================================================
  // Body
  // ============================================================

  static final TextStyle bodyLg = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    height: 1.50,
    color: AppColor.background,
  );

  static final TextStyle bodyMd = GoogleFonts.poppins(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.45,
    color: AppColor.background,
  );

  static final TextStyle bodySm = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.35,
    color: AppColor.background,
  );

  // ============================================================
  // Label
  // ============================================================

  static final TextStyle labelLg = GoogleFonts.poppins(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    height: 1.40,
    color: AppColor.background,
  );

  static final TextStyle labelMd = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.35,
    color: AppColor.background,
  );

  static final TextStyle labelSm = GoogleFonts.poppins(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 1.40,
    color: AppColor.background,
  );
}
