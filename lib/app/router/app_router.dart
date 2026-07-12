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

import 'package:edwres_app/app/router/router.dart';
import 'package:edwres_app/features/features.dart';
import 'package:edwres_app/models/models.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: AppRoutes.home,
      name: AppRoutes.home,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const HomeMobileScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );
      },
    ),
    GoRoute(
      path: AppRoutes.news,
      name: AppRoutes.news,
      pageBuilder: (context, state) {
        final news = state.extra as NewsModel;
        return NoTransitionPage(child: NewsDetailScreen(data: news));
      },
    ),
    GoRoute(
      path: AppRoutes.login,
      name: AppRoutes.login,
      pageBuilder: (context, state) {
        return NoTransitionPage(child: const LoginScreen());
      },
    ),
    GoRoute(
      path: AppRoutes.contact,
      name: AppRoutes.contact,
      pageBuilder: (context, state) {
        return NoTransitionPage(child: const ContactScreen());
      },
    ),
  ],
);
