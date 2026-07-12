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
import 'package:edwres_app/core/blocs/contact/contact.dart';
import 'package:edwres_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactBloc()..add(const ContactEvent.fetch()),
      child: Scaffold(
        backgroundColor: AppColor.primaryBold,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Navbar(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 32.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Tim Peneliti',
                        style: AppTextStyle.titleMd.copyWith(
                          color: AppColor.secondary,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        'Struktur Kepakaran',
                        style: AppTextStyle.headlineLg,
                      ),
                      const SizedBox(height: 8.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Divider(
                          color: AppColor.secondary,
                          thickness: 5,
                          radius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(height: 48.0),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.white,
                          border: Border.all(color: AppColor.gray, width: 4),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/icon.png',
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 48.0),
                      BlocBuilder<ContactBloc, ContactState>(
                        builder: (context, state) {
                          if (state.status.isLoading) {
                            return const CircularProgressIndicator();
                          }
                          return Column(
                            spacing: 16,
                            children: state.data.map((item) {
                              return ContactCard(data: item);
                            }).toList(),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
