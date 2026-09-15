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

import 'package:edwres_app/app/theme/theme.dart';
import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/core/widgets/cloudflare_turnstile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GuestBookSection extends StatefulWidget {
  const GuestBookSection({super.key});

  @override
  State<GuestBookSection> createState() => _GuestBookSectionState();
}

class _GuestBookSectionState extends State<GuestBookSection> {
  final _namaController = TextEditingController();
  final _emailController = TextEditingController();
  final _pesanController = TextEditingController();

  String? _turnstileToken;
  int _turnstileKey = 0;
  @override
  void initState() {
    _fetchData(context);
    super.initState();
  }

  void _fetchData(BuildContext context) {
    context.read<GuestbookBloc>().add(GuestbookEvent.fetch());
  }

  int _visibleCount = 3;

  @override
  void dispose() {
    _namaController.dispose();
    _emailController.dispose();
    _pesanController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GuestbookBloc, GuestbookState>(
      listenWhen: (previous, current) =>
          previous.createStatus != current.createStatus,
      listener: (context, state) {
        if (state.createStatus.isLoaded) {
          // Bersihkan form
          _namaController.clear();
          _emailController.clear();
          _pesanController.clear();

          // Bersihkan token Turnstile
          setState(() {
            _turnstileToken = null;
            _turnstileKey++;
          });

          // Alert sukses
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Pesan berhasil dikirim!'),
              backgroundColor: Colors.green,
            ),
          );
        }

        if (state.createStatus.isError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.createError ?? 'Gagal mengirim pesan'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: Container(
        width: double.infinity,
        color: AppColor.primary,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
            top: 16.0,
            bottom: 32.0,
          ),
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: AppColor.primary400,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 24.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Buku Tamu',
                      style: AppTextStyle.titleLg,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Tinggalkan pesan, saran, atau kesan Anda untuk EDWRES.',
                    style: AppTextStyle.bodyMd,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32.0),
                  Text('Nama Lengkap', style: AppTextStyle.bodyMd),
                  const SizedBox(height: 8.0),
                  TextField(
                    controller: _namaController,
                    style: AppTextStyle.bodyMd,
                    decoration: InputDecoration(
                      hintText: 'Masukkan nama Anda',
                      hintStyle: AppTextStyle.bodyMd.copyWith(
                        color: AppColor.gray,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: AppColor.primary),
                      ),
                      filled: true,
                      fillColor: AppColor.primaryBold,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: AppColor.primary),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text('Email', style: AppTextStyle.bodyMd),
                  const SizedBox(height: 8.0),
                  TextField(
                    controller: _emailController,
                    style: AppTextStyle.bodyMd,
                    decoration: InputDecoration(
                      hintText: 'email@contoh.com',
                      hintStyle: AppTextStyle.bodyMd.copyWith(
                        color: AppColor.gray,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: AppColor.primary),
                      ),
                      filled: true,
                      fillColor: AppColor.primaryBold,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: AppColor.primary),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text('Pesan Anda', style: AppTextStyle.bodyMd),
                  const SizedBox(height: 8.0),
                  TextField(
                    controller: _pesanController,
                    style: AppTextStyle.bodyMd,
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Tuliskan pesan Anda di sini...',
                      hintStyle: AppTextStyle.bodyMd.copyWith(
                        color: AppColor.gray,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: AppColor.primary),
                      ),
                      filled: true,
                      fillColor: AppColor.primaryBold,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: AppColor.primary),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),

                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: CloudflareTurnstile(
                      key: ValueKey(_turnstileKey),
                      siteKey: dotenv.get('TURNSTILE_SITE_KEY'),
                      onToken: (token) {
                        if (!mounted) return;

                        setState(() {
                          _turnstileToken = token;
                        });
                      },
                      onExpired: () {
                        if (!mounted) return;

                        setState(() {
                          _turnstileToken = null;
                        });
                      },
                      onError: () {
                        if (!mounted) return;

                        setState(() {
                          _turnstileToken = null;
                        });

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Verifikasi keamanan gagal.'),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 24.0),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_namaController.text.trim().isEmpty ||
                            _emailController.text.trim().isEmpty ||
                            _pesanController.text.trim().isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Semua field harus diisi.'),
                            ),
                          );
                          return;
                        }

                        if (_turnstileToken == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Silakan selesaikan verifikasi keamanan.',
                              ),
                            ),
                          );
                          return;
                        }

                        final confirmed = await showDialog<bool>(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) => AlertDialog(
                            backgroundColor: AppColor.primary400,
                            insetPadding: const EdgeInsets.symmetric(
                              horizontal: 24,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            titlePadding: const EdgeInsets.fromLTRB(
                              24,
                              24,
                              24,
                              0,
                            ),
                            contentPadding: const EdgeInsets.fromLTRB(
                              24,
                              18,
                              24,
                              8,
                            ),
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
                                    Icons.send_rounded,
                                    color: AppColor.white,
                                    size: 22,
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Expanded(
                                  child: Text(
                                    'Kirim pesan?',
                                    style: AppTextStyle.titleLg.copyWith(
                                      color: AppColor.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            content: Text(
                              'Pastikan data yang Anda isi sudah benar sebelum mengirim pesan.',
                              style: AppTextStyle.bodyMd.copyWith(
                                color: AppColor.gray,
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.of(context).pop(false),
                                child: Text(
                                  'Batal',
                                  style: AppTextStyle.titleSm.copyWith(
                                    color: AppColor.gray,
                                  ),
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
                                onPressed: () =>
                                    Navigator.of(context).pop(true),
                                child: Text(
                                  'Kirim',
                                  style: AppTextStyle.titleSm.copyWith(
                                    color: AppColor.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );

                        if (!mounted || confirmed != true) return;

                        context.read<GuestbookBloc>().add(
                          GuestbookEvent.create(
                            nama: _namaController.text.trim(),
                            email: _emailController.text.trim(),
                            pesan: _pesanController.text.trim(),
                            turnstileToken: _turnstileToken!,
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.secondary,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 8.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Kirim Pesan',
                        style: AppTextStyle.bodyMd.copyWith(
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  const Divider(color: AppColor.gray, thickness: 0.1),
                  const SizedBox(height: 24.0),
                  Row(
                    children: [
                      const Icon(
                        Icons.message,
                        color: AppColor.secondary,
                        size: 16.0,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        'Komentar Terbaru',
                        style: AppTextStyle.titleMd.copyWith(
                          color: AppColor.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  BlocBuilder<GuestbookBloc, GuestbookState>(
                    builder: (context, state) {
                      if (state.status.isLoading) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (state.status.isLoaded && state.data != null) {
                        final guestbooks = state.data ?? [];

                        final visibleGuestbooks = guestbooks
                            .take(_visibleCount)
                            .toList();

                        return Column(
                          children: [
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: visibleGuestbooks.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(height: 16),
                              itemBuilder: (context, index) {
                                return GuestbookCard(
                                  guestbook: visibleGuestbooks[index],
                                );
                              },
                            ),
                            const SizedBox(height: 24),
                            if (guestbooks.length > _visibleCount)
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (_visibleCount >= guestbooks.length) {
                                      _visibleCount = 3;
                                    } else {
                                      _visibleCount += 3;

                                      if (_visibleCount > guestbooks.length) {
                                        _visibleCount = guestbooks.length;
                                      }
                                    }
                                  });
                                },
                                child: Text(
                                  _visibleCount >= guestbooks.length
                                      ? 'Sembunyikan pesan'
                                      : 'Lihat semua pesan',
                                  style: AppTextStyle.labelMd,
                                ),
                              ),
                          ],
                        );
                      }
                      return Center(
                        child: Column(
                          children: [
                            Text(
                              'Data tidak ditemukan',
                              style: TextStyle(color: AppColor.white),
                            ),
                            const SizedBox(height: 8.0),
                            InkWell(
                              onTap: () {
                                _fetchData(context);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.refresh,
                                    color: AppColor.secondary,
                                  ),
                                  const SizedBox(width: 4.0),
                                  Text(
                                    'Ulangi',
                                    style: TextStyle(
                                      color: AppColor.secondary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
