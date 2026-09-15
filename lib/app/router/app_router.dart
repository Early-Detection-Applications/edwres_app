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
import 'package:edwres_app/core/blocs/auth/profile_bloc.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/data/data.dart';
import 'package:edwres_app/data/repository/profile_repository.dart';
import 'package:edwres_app/features/auth/edit_profile_screen.dart';
import 'package:edwres_app/features/features.dart';
import 'package:edwres_app/features/news/entrepreunership_list_screen.dart';
import 'package:edwres_app/features/news/news_list_screen.dart';
import 'package:edwres_app/features/panduan_aplikasi/panduan_aplikasi_screen.dart';
import 'package:edwres_app/features/referensi_buku/referensi_buku.dart';
import 'package:edwres_app/features/referensi_buku/referensi_buku_detail_screen.dart';
import 'package:edwres_app/features/tokoh/tokoh_detail_screen.dart';
import 'package:edwres_app/features/tokoh/tokoh_screen.dart';
import 'package:edwres_app/models/models.dart';
import 'package:edwres_app/models/referensi_buku/referensi_buku.dart';
import 'package:edwres_app/models/tokoh/tokoh_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    // ============================================================
    // WEBSITE DASHBOARD
    // ============================================================
    GoRoute(
      path: AppRoutes.home,
      name: AppRoutes.home,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const HomeMobileScreen(isWebsite: true),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );
      },
    ),

    // ============================================================
    // USER DASHBOARD
    // ============================================================
    GoRoute(
      path: AppRoutes.dashboardUser,
      name: AppRoutes.dashboardUser,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const HomeMobileScreen(isWebsite: false),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );
      },
    ),

    // ============================================================
    // NEWS DETAIL
    // ============================================================
    GoRoute(
      path: AppRoutes.news,
      name: AppRoutes.news,
      pageBuilder: (context, state) {
        final news = state.extra as NewsModel;

        return NoTransitionPage(child: NewsDetailScreen(data: news));
      },
    ),

    // ============================================================
    // LOGIN
    // ============================================================
    GoRoute(
      path: AppRoutes.login,
      name: AppRoutes.login,
      pageBuilder: (context, state) {
        return const NoTransitionPage(child: LoginScreen());
      },
    ),

    // ============================================================
    // CONTACT
    // ============================================================
    GoRoute(
      path: AppRoutes.contact,
      name: AppRoutes.contact,
      pageBuilder: (context, state) {
        return const NoTransitionPage(child: ContactScreen());
      },
    ),

    // ============================================================
    // CONSULTATION
    // ============================================================
    GoRoute(
      path: AppRoutes.consultation,
      name: AppRoutes.consultation,
      pageBuilder: (context, state) {
        return const NoTransitionPage(child: ConsultationScreen());
      },
    ),

    // ============================================================
    // LIST NEWS
    // ============================================================
    GoRoute(
      path: AppRoutes.listNews,
      name: AppRoutes.listNews,
      pageBuilder: (context, state) {
        return NoTransitionPage(child: const ListNewsScreen());
      },
    ),

    // ============================================================
    // REGISTER
    // ============================================================
    GoRoute(
      path: AppRoutes.register,
      name: AppRoutes.register,
      pageBuilder: (context, state) {
        return const NoTransitionPage(child: RegisterScreen());
      },
    ),

    // ============================================================
    // CONSULTATION RESULT
    // ============================================================
    GoRoute(
      path: AppRoutes.consultationResult,
      name: AppRoutes.consultationResult,
      pageBuilder: (context, state) {
        final diagnosis = state.extra as DiagnosisResponseModel;

        return NoTransitionPage(
          child: BlocProvider(
            create: (context) =>
                ConsultationBloc(IndicatorRepository(), DiagnosisRepository()),
            child: ConsultationResultScreen(diagnosis: diagnosis),
          ),
        );
      },
    ),

    // ============================================================
    // DETECTION HISTORY
    // ============================================================
    GoRoute(
      path: AppRoutes.detectionHistory,
      name: AppRoutes.detectionHistory,
      pageBuilder: (context, state) {
        return NoTransitionPage(child: DetectionHistoryScreen());
      },
    ),

    // ============================================================
    // JOURNAL REFERENCE
    // ============================================================
    GoRoute(
      path: AppRoutes.journalReference,
      name: AppRoutes.journalReference,
      pageBuilder: (context, state) {
        return NoTransitionPage(child: JournalReferenceScreen());
      },
    ),

    // ============================================================
    // MODULE
    // ============================================================
    GoRoute(
      path: AppRoutes.module,
      name: AppRoutes.module,
      pageBuilder: (context, state) {
        return NoTransitionPage(child: ModulPelatihanScreen());
      },
    ),

    // ============================================================
    // BOOK REFERENCE
    // ============================================================
    GoRoute(
      path: AppRoutes.bookReference,
      name: AppRoutes.bookReference,
      pageBuilder: (context, state) {
        return NoTransitionPage(child: ReferensiBukuScreen());
      },
    ),

    // ============================================================
    // REFERENSI BUKU DETAIL
    // ============================================================
    GoRoute(
      path: AppRoutes.referensiBukuDetail,
      name: AppRoutes.referensiBukuDetail,
      pageBuilder: (context, state) {
        final buku = state.extra as ReferensiBukuModel;
        return NoTransitionPage(child: ReferensiBukuDetailScreen(id: buku.id!));
      },
    ),

    GoRoute(
      path: AppRoutes.tokoh,
      name: AppRoutes.tokoh,
      pageBuilder: (context, state) {
        return NoTransitionPage(child: TokohScreen());
      },
    ),

    GoRoute(
      path: AppRoutes.tokohDetail,
      name: AppRoutes.tokohDetail,
      pageBuilder: (context, state) {
        final tokoh = state.extra as TokohModel;

        return NoTransitionPage(child: TokohDetailScreen(id: tokoh.id!));
      },
    ),

    GoRoute(
      path: AppRoutes.panduanAplikasi,
      name: AppRoutes.panduanAplikasi,
      pageBuilder: (context, state) {
        return NoTransitionPage(child: PanduanAplikasiScreen());
      },
    ),

    GoRoute(
      path: AppRoutes.editProfile,
      name: AppRoutes.editProfile,
      pageBuilder: (context, state) {
        return NoTransitionPage(
          child: BlocProvider(
            create: (_) => ProfileBloc(ProfileRepository()),
            child: const EditProfileScreen(),
          ),
        );
      },
    ),

    GoRoute(
      path: AppRoutes.newsList,
      name: AppRoutes.newsList,
      pageBuilder: (context, state) {
        return NoTransitionPage(child: const NewsListScreen());
      },
    ),

    GoRoute(
      path: AppRoutes.entrepreneurshipList,
      name: AppRoutes.entrepreneurshipList,
      pageBuilder: (context, state) {
        return NoTransitionPage(child: const EntrepreunershipListScreen());
      },
    ),
  ],
);
