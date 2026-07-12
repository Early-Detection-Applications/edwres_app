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
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool _isLogoutLoading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text('Menu', style: AppTextStyle.headlineMd),
          _item(
            context,
            title: 'Tentang EDWRES',
            onTap: () {
              GoRouter.of(context).pushNamed(AppRoutes.home);
            },
          ),
          _item(
            context,
            title: 'Berita',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Fitur ini belum tersedia. Masih dalam proses pengembangan.',
                  ),
                ),
              );
            },
          ),
          _item(
            context,
            title: 'Referensi Hasil Penelitian',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Fitur ini belum tersedia. Masih dalam proses pengembangan.',
                  ),
                ),
              );
            },
          ),
          _item(
            context,
            title: 'Modul Pelatihan',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Fitur ini belum tersedia. Masih dalam proses pengembangan.',
                  ),
                ),
              );
            },
          ),
          _item(
            context,
            title: 'Konsultasi',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Fitur ini belum tersedia. Masih dalam proses pengembangan.',
                  ),
                ),
              );
            },
          ),
          _item(
            context,
            title: 'Kontak',
            onTap: () {
              GoRouter.of(context).push(AppRoutes.contact);
            },
          ),
          const SizedBox(height: 12.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(thickness: 0.5),
          ),
          !SessionManager.isLogin
              ? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            GoRouter.of(context).push(AppRoutes.login);
                            Navigator.of(context).pop();
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              AppColor.secondary,
                            ),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          child: Text('Login', style: AppTextStyle.titleMd),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Fitur ini belum tersedia. Masih dalam proses pengembangan.',
                                ),
                              ),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              AppColor.border,
                            ),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          child: Text('Register', style: AppTextStyle.titleMd),
                        ),
                      ),
                    ),
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _isLogoutLoading
                          ? null
                          : () {
                              _showLogoutDialog();
                            },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColor.secondary,
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      child: Text('Logout', style: AppTextStyle.titleMd),
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  Widget _item(
    BuildContext context, {
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      title: Text(title, style: AppTextStyle.titleMd),
      onTap: () {
        Navigator.of(context).pop();
        onTap();
      },
    );
  }

  Future<void> _showLogoutDialog() async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColor.primary400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text(
            'Konfirmasi Logout',
            style: AppTextStyle.titleLg.copyWith(
              color: AppColor.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            'Apakah Anda yakin ingin keluar dari akun ini?',
            style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text(
                'Batal',
                style: AppTextStyle.titleMd.copyWith(color: AppColor.gray),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.secondary,
              ),
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text(
                'Logout',
                style: AppTextStyle.titleMd.copyWith(color: AppColor.white),
              ),
            ),
          ],
        );
      },
    );

    if (result == true) {
      setState(() {
        _isLogoutLoading = true;
      });

      try {
        await SessionManager.logout();

        if (!mounted) return;

        Navigator.of(context).pop(); // Tutup Drawer
        context.go(AppRoutes.home); // atau AppRoutes.login
      } finally {
        if (mounted) {
          setState(() {
            _isLogoutLoading = false;
          });
        }
      }
    }
  }
}
