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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetectionHistoryScreen extends StatelessWidget {
  const DetectionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final idUser = SessionManager.idUser;

    return BlocProvider(
      create: (context) =>
          DetectionHistoryBloc(DetectionHistoryRepository())
            ..add(DetectionHistoryEvent.fetch(idUser: idUser)),
      child: const DetectionHistoryScreenContent(),
    );
  }
}

class DetectionHistoryScreenContent extends StatelessWidget {
  const DetectionHistoryScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary400,

      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppColor.green,
        onPressed: openWhatsapp,
        child: const FaIcon(
          FontAwesomeIcons.whatsapp,
          color: Colors.white,
          size: 30,
        ),
      ),

      drawer: const Drawer(
        backgroundColor: AppColor.primary,
        child: AppDrawer(),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Navbar(),
          Expanded(
            child: BlocBuilder<DetectionHistoryBloc, DetectionHistoryState>(
              builder: (context, state) {
                if (state.status == DetectionHistoryStatus.loading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state.status == DetectionHistoryStatus.error) {
                  return Center(
                    child: Text(
                      state.error.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                }

                final data = state.data ?? [];

                if (data.isEmpty) {
                  return const Center(
                    child: Text(
                      'Belum ada riwayat konsultasi.',
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                }

                return ListView.separated(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 100),
                  itemCount: data.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final history = data[index];

                    return HistoryListItem(history: history);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
