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

import 'package:edwres_app/app/app.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/data/repository/repository.dart';
import 'package:edwres_app/features/sections/sections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeMobileScreen extends StatefulWidget {
  const HomeMobileScreen({super.key});

  @override
  State<HomeMobileScreen> createState() => _HomeMobileScreenState();
}

class _HomeMobileScreenState extends State<HomeMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AssessmentBloc()..add(AssessmentEvent.fetch()),
        ),
        BlocProvider(create: (context) => NewsBloc(NewsRepository())),
        BlocProvider(create: (context) => RssNewsBloc(RssNewsRepository())),
        BlocProvider(create: (context) => GuestbookBloc(GuestbookRepository())),
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: openWhatsapp,
          backgroundColor: AppColor.green,
          child: const FaIcon(
            FontAwesomeIcons.whatsapp,
            color: AppColor.white,
            size: 32,
          ),
        ),
        drawer: const Drawer(
          backgroundColor: AppColor.primary,
          child: AppDrawer(),
        ),
        body: Column(
          children: [
            const Navbar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HeroSection(),
                    MitraSection(),
                    AboutSection(),
                    NewsSection(),
                    RssNewsSection(),
                    GuestBookSection(),
                    FooterSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
