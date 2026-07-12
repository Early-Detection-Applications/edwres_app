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

import 'package:marqueer/marqueer.dart';
import 'package:flutter/material.dart';

class LogoMarquee extends StatelessWidget {
  const LogoMarquee({super.key});

  @override
  Widget build(BuildContext context) {
    final logos = [
      'assets/images/0.png',
      'assets/images/1.png',
      'assets/images/2.png',
      'assets/images/3.png',
      'assets/images/4.png',
      'assets/images/5.png',
      'assets/images/6.png',
      'assets/images/7.png',
      'assets/images/8.png',
      'assets/images/9.png',
    ];

    return SizedBox(
      height: 80,
      child: Marqueer(
        pps: 50, // pixel per second
        direction: MarqueerDirection.ltr,
        child: Row(
          children: logos.map((logo) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Image.asset(logo, height: 70),
            );
          }).toList(),
        ),
      ),
    );
  }
}
