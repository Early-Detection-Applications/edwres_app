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

import 'package:flutter/material.dart';

class ConsultationSectionTabBar extends StatelessWidget {
  const ConsultationSectionTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xFF0E4A58),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.15),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TabBar(
        isScrollable: false,
        dividerColor: Colors.transparent,
        indicatorSize: TabBarIndicatorSize.tab,
        splashBorderRadius: BorderRadius.circular(10),

        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFFFA75A), Color(0xFFFF7A00)],
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x55FF7A00),
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
        ),

        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,

        labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),

        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),

        tabs: const [
          Tab(text: "Bagian 1"),
          Tab(text: "Bagian 2"),
          Tab(text: "Bagian 3"),
          Tab(text: "Bagian 4"),
        ],
      ),
    );
  }
}
