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
import 'package:flutter/widgets.dart';

class HeroBackground extends StatelessWidget {
  const HeroBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryBold,
      child: Stack(
        children: [
          Container(color: AppColor.primary),
          Positioned.fill(child: CustomPaint(painter: HeroPatternPainter())),
          child,
        ],
      ),
    );
  }
}

class HeroPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF104B59).withValues(alpha: 0.2)
      ..strokeWidth = 1.5;

    const spacing = 30.0;
    const plusSize = 10.0;

    for (double x = 0; x < size.width; x += spacing) {
      for (double y = 0; y < size.height; y += spacing) {
        canvas.drawLine(
          Offset(x - plusSize / 2, y),
          Offset(x + plusSize / 2, y),
          paint,
        );

        canvas.drawLine(
          Offset(x, y - plusSize / 2),
          Offset(x, y + plusSize / 2),
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
