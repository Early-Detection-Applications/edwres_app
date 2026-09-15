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
import 'package:edwres_app/data/data.dart';
import 'package:edwres_app/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListNewsScreen extends StatelessWidget {
  const ListNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewsBloc(context.read<NewsRepository>()),
        ),
        BlocProvider(
          create: (context) =>
              EntrepreneurshipBloc(context.read<EntrepreneurshipRepository>()),
        ),
        BlocProvider(create: (context) => RssNewsBloc(RssNewsRepository())),
      ],
      child: const ListNewsScreenContent(),
    );
  }
}

class ListNewsScreenContent extends StatefulWidget {
  const ListNewsScreenContent({super.key});

  @override
  State<ListNewsScreenContent> createState() => _ListNewsScreenContentState();
}

class _ListNewsScreenContentState extends State<ListNewsScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBold,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppColor.green,
        onPressed: openWhatsapp,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Navbar(),
              EntrepreneurshipSection(),
              ListNewsSection(),
              RssNewsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
