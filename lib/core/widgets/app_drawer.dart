// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
// either express or implied.
// See the License for the specific language governing permissions
// and limitations under the License.

import 'package:edwres_app/app/app.dart';
import 'package:edwres_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppDrawer extends StatefulWidget {
  /// true  = drawer yang digunakan di Website Dashboard
  /// false = drawer yang digunakan di Dashboard User
  final bool isWebsite;

  const AppDrawer({super.key, this.isWebsite = false});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool _isLogoutLoading = false;
  bool _informationExpanded = true;

  // ============================================================
  // USER ROUTES
  // ============================================================

  bool _isUserRoute(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;

    return location == AppRoutes.dashboardUser ||
        location == AppRoutes.consultation ||
        location == AppRoutes.consultationResult ||
        location == AppRoutes.detectionHistory;
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: SessionManager.isLogin,
      builder: (context, isLogin, _) {
        // ========================================================
        // PENTING:
        //
        // Jika widget.isWebsite = true
        // -> selalu Website Drawer.
        //
        // Jika widget.isWebsite = false
        // -> cek route.
        //
        // Route user -> User Drawer
        // Route lainnya -> Website Drawer
        // ========================================================

        final isWebsite = widget.isWebsite || !_isUserRoute(context);

        return SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: AppColor.primary400,

            child: isWebsite
                ? _buildWebsiteDrawer(context, isLogin)
                : _buildUserDrawer(context),
          ),
        );
      },
    );
  }

  // ============================================================
  // USER DASHBOARD DRAWER
  // ============================================================

  Widget _buildUserDrawer(BuildContext context) {
    return Column(
      children: [
        _buildHeader(context),

        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ------------------------------------------------
                // DASHBOARD
                // ------------------------------------------------
                _loggedInMenuItem(
                  context,
                  icon: Icons.dashboard_outlined,
                  title: 'Dashboard',
                  onTap: () {
                    GoRouter.of(context).go(AppRoutes.dashboardUser);
                  },
                ),

                // ------------------------------------------------
                // EDIT PROFILE
                // ------------------------------------------------
                _loggedInMenuItem(
                  context,
                  icon: Icons.edit_outlined,
                  title: 'Edit Profile',
                  onTap: () {
                    GoRouter.of(context).pushNamed(AppRoutes.editProfile);
                  },
                ),

                // ------------------------------------------------
                // KONSULTASI
                // ------------------------------------------------
                _loggedInMenuItem(
                  context,
                  icon: Icons.support_agent_outlined,
                  title: 'Konsultasi',
                  onTap: () {
                    GoRouter.of(context).push(AppRoutes.consultation);
                  },
                ),

                const SizedBox(height: 8),

                Divider(color: Colors.white.withOpacity(0.08), height: 1),

                const SizedBox(height: 8),

                // ------------------------------------------------
                // LIHAT WEBSITE
                // ------------------------------------------------
                _loggedInMenuItem(
                  context,
                  icon: Icons.language_rounded,
                  title: 'Lihat Website',
                  onTap: () {
                    GoRouter.of(context).go(AppRoutes.home);
                  },
                ),
              ],
            ),
          ),
        ),

        // --------------------------------------------------------
        // LOGOUT
        // --------------------------------------------------------
        _buildLogoutButton(context),
      ],
    );
  }

  // ============================================================
  // WEBSITE DRAWER
  // ============================================================

  Widget _buildWebsiteDrawer(BuildContext context, bool isLogin) {
    return Column(
      children: [
        _buildHeader(context),

        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ------------------------------------------------
                // TENTANG EDWRES
                // ------------------------------------------------
                _guestMenuItem(
                  context,
                  title: 'Tentang EDWRES',
                  onTap: () {
                    GoRouter.of(context).go(AppRoutes.home);
                  },
                ),

                // ------------------------------------------------
                // KONSULTASI
                // ------------------------------------------------
                _guestMenuItem(
                  context,
                  title: 'Konsultasi',
                  onTap: () {
                    if (isLogin) {
                      GoRouter.of(context).push(AppRoutes.consultation);
                    } else {
                      GoRouter.of(context).push(AppRoutes.login);
                    }
                  },
                ),

                // ------------------------------------------------
                // INFORMASI
                // ------------------------------------------------
                _buildInformationMenu(context),

                // ------------------------------------------------
                // KONTAK
                // ------------------------------------------------
                _guestMenuItem(
                  context,
                  title: 'Kontak',
                  onTap: () {
                    GoRouter.of(context).push(AppRoutes.contact);
                  },
                ),

                // ------------------------------------------------
                // DASHBOARD USER
                //
                // HANYA MUNCUL KETIKA SUDAH LOGIN
                // ------------------------------------------------
                if (isLogin) ...[
                  const SizedBox(height: 8),

                  Divider(color: Colors.white.withOpacity(0.08), height: 1),

                  const SizedBox(height: 8),

                  _loggedInMenuItem(
                    context,
                    icon: Icons.dashboard_outlined,
                    title: 'Dashboard User',
                    onTap: () {
                      GoRouter.of(context).go(AppRoutes.dashboardUser);
                    },
                  ),
                ],
              ],
            ),
          ),
        ),

        // --------------------------------------------------------
        // ACTION BOTTOM
        //
        // Guest -> Login/Register
        // Login -> Logout
        // --------------------------------------------------------
        isLogin ? _buildLogoutButton(context) : _buildGuestActions(context),
      ],
    );
  }

  // ============================================================
  // HEADER
  // ============================================================

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 18, 18, 18),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white.withOpacity(0.08)),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/images/icon.png',
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.business_center_rounded,
                  color: AppColor.primary400,
                  size: 30,
                );
              },
            ),
          ),

          const SizedBox(width: 14),

          const Expanded(
            child: Text(
              'EDWRES',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w800,
                letterSpacing: -0.5,
              ),
            ),
          ),

          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close, color: Colors.white, size: 20),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 42, minHeight: 42),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // GUEST MENU ITEM
  // ============================================================

  Widget _guestMenuItem(
    BuildContext context, {
    required String title,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Navigator.of(context).pop();
          onTap();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white.withOpacity(0.92),
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  // ============================================================
  // LOGGED IN MENU ITEM
  // ============================================================

  Widget _loggedInMenuItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Navigator.of(context).pop();
          onTap();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Row(
            children: [
              Icon(icon, color: Colors.white.withOpacity(0.88), size: 21),

              const SizedBox(width: 12),

              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.92),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ============================================================
  // INFORMATION MENU
  // ============================================================

  Widget _buildInformationMenu(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              setState(() {
                _informationExpanded = !_informationExpanded;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Informasi',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.92),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  AnimatedRotation(
                    turns: _informationExpanded ? 0.5 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.white.withOpacity(0.8),
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        AnimatedCrossFade(
          duration: const Duration(milliseconds: 200),
          crossFadeState: _informationExpanded
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          firstChild: _buildInformationChildren(context),
          secondChild: const SizedBox.shrink(),
        ),
      ],
    );
  }

  // ============================================================
  // INFORMATION CHILDREN
  // ============================================================

  Widget _buildInformationChildren(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 4, bottom: 6),
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.025),
        border: Border.all(color: Colors.white.withOpacity(0.08)),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          _informationItem(
            context,
            icon: Icons.article_outlined,
            title: 'Berita & Artikel',
            onTap: () {
              GoRouter.of(context).pushNamed(AppRoutes.listNews);
            },
          ),

          _informationItem(
            context,
            icon: Icons.school_outlined,
            title: 'Tokoh & Teori',
            onTap: () {
              GoRouter.of(context).pushNamed(AppRoutes.tokoh);
            },
          ),

          _informationItem(
            context,
            icon: Icons.menu_book_outlined,
            title: 'Referensi Buku',
            onTap: () {
              GoRouter.of(context).pushNamed(AppRoutes.bookReference);
            },
          ),

          _informationItem(
            context,
            icon: Icons.play_circle_outline_rounded,
            title: 'Panduan Aplikasi',
            onTap: () {
              GoRouter.of(context).pushNamed(AppRoutes.panduanAplikasi);
            },
          ),

          _informationItem(
            context,
            icon: Icons.science_outlined,
            title: 'Referensi Hasil Penelitian',
            onTap: () {
              GoRouter.of(context).pushNamed(AppRoutes.journalReference);
            },
          ),

          _informationItem(
            context,
            icon: Icons.school_rounded,
            title: 'Modul Pelatihan',
            onTap: () {
              GoRouter.of(context).pushNamed(AppRoutes.module);
            },
          ),
        ],
      ),
    );
  }

  // ============================================================
  // INFORMATION ITEM
  // ============================================================

  Widget _informationItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool active = false,
  }) {
    return Material(
      color: active ? Colors.white.withOpacity(0.055) : Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Navigator.of(context).pop();
          onTap();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
          child: Row(
            children: [
              Icon(icon, color: AppColor.secondary, size: 20),

              const SizedBox(width: 12),

              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white.withOpacity(active ? 0.98 : 0.78),
                    fontSize: 15,
                    fontWeight: active ? FontWeight.w600 : FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ============================================================
  // GUEST ACTIONS
  // ============================================================

  Widget _buildGuestActions(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 14, 24, 20),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.white.withOpacity(0.08))),
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 46,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();

                  GoRouter.of(context).push(AppRoutes.login);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.secondary,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: SizedBox(
              height: 46,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();

                  GoRouter.of(context).push(AppRoutes.register);
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.white.withOpacity(0.15)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // LOGOUT BUTTON
  // ============================================================

  Widget _buildLogoutButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
      child: SizedBox(
        width: double.infinity,
        height: 46,
        child: ElevatedButton(
          onPressed: _isLogoutLoading ? null : _showLogoutDialog,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.secondary,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: _isLogoutLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
              : Text(
                  'Logout',
                  style: AppTextStyle.titleMd.copyWith(color: Colors.white),
                ),
        ),
      ),
    );
  }

  // ============================================================
  // COMING SOON
  // ============================================================

  void _showComingSoon(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Fitur ini belum tersedia. '
          'Masih dalam proses pengembangan.',
        ),
      ),
    );
  }

  // ============================================================
  // LOGOUT DIALOG
  // ============================================================

  Future<void> _showLogoutDialog() async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return AlertDialog(
          backgroundColor: AppColor.primary400,
          insetPadding: const EdgeInsets.symmetric(horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          contentPadding: const EdgeInsets.fromLTRB(24, 18, 24, 8),
          title: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: AppColor.secondary,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(
                  Icons.logout_rounded,
                  color: AppColor.white,
                  size: 22,
                ),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: Text(
                  'Konfirmasi Logout',
                  style: AppTextStyle.titleLg.copyWith(
                    color: AppColor.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          content: Text(
            'Apakah Anda yakin ingin keluar dari akun ini?',
            style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext, false);
              },
              child: Text(
                'Batal',
                style: AppTextStyle.titleSm.copyWith(color: AppColor.gray),
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.secondary,
                foregroundColor: AppColor.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pop(dialogContext, true);
              },
              child: Text(
                'Logout',
                style: AppTextStyle.titleSm.copyWith(color: AppColor.white),
              ),
            ),
          ],
        );
      },
    );

    if (result != true) {
      return;
    }

    setState(() {
      _isLogoutLoading = true;
    });

    try {
      await SessionManager.logout();

      if (!mounted) {
        return;
      }

      Navigator.of(context).pop();

      context.go(AppRoutes.home);
    } finally {
      if (mounted) {
        setState(() {
          _isLogoutLoading = false;
        });
      }
    }
  }
}
