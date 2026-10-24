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
import 'package:edwres_app/data/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscurePassword = true;
  bool _obscureRetypePassword = true;

  // Status validasi password
  bool _isPasswordValid = false;

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _retypePasswordController = TextEditingController();
  final _namaLengkapController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Listener agar status button berubah realtime
    _usernameController.addListener(_onFieldChanged);
    _namaLengkapController.addListener(_onFieldChanged);
    _emailController.addListener(_onFieldChanged);
    _passwordController.addListener(_onFieldChanged);
    _retypePasswordController.addListener(_onFieldChanged);
  }

  void _onFieldChanged() {
    setState(() {
      _isPasswordValid = _passwordController.text.length >= 8;
    });
  }

  @override
  void dispose() {
    _usernameController.removeListener(_onFieldChanged);
    _namaLengkapController.removeListener(_onFieldChanged);
    _emailController.removeListener(_onFieldChanged);
    _passwordController.removeListener(_onFieldChanged);
    _retypePasswordController.removeListener(_onFieldChanged);

    _usernameController.dispose();
    _passwordController.dispose();
    _retypePasswordController.dispose();
    _namaLengkapController.dispose();
    _emailController.dispose();

    super.dispose();
  }

  bool _isValidEmail(String email) {
    final pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

    return RegExp(pattern).hasMatch(email);
  }

  bool get _canRegister {
    return _usernameController.text.trim().isNotEmpty &&
        _namaLengkapController.text.trim().isNotEmpty &&
        _emailController.text.trim().isNotEmpty &&
        _passwordController.text.isNotEmpty &&
        _passwordController.text.length >= 8 &&
        _retypePasswordController.text.isNotEmpty;
  }

  Future<void> _submit(BuildContext context) async {
    final username = _usernameController.text.trim();
    final password = _passwordController.text;
    final retypePassword = _retypePasswordController.text;
    final namaLengkap = _namaLengkapController.text.trim();
    final email = _emailController.text.trim();

    if (!_canRegister) {
      _showError('Data belum lengkap.');
      return;
    }

    if (!_isValidEmail(email)) {
      _showError('Alamat email tidak valid.');
      return;
    }

    // Validasi password minimal 8 karakter
    if (password.length < 8) {
      _showError('Password minimal 8 karakter.');
      return;
    }

    if (password != retypePassword) {
      _showError('Kata sandi tidak cocok.');
      return;
    }

    final confirm = await showDialog<bool>(
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
                  Icons.person_add_alt_1_rounded,
                  color: AppColor.white,
                  size: 22,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  'Konfirmasi Registrasi',
                  style: AppTextStyle.titleLg.copyWith(
                    color: AppColor.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          content: Text(
            'Apakah data yang Anda masukkan sudah benar dan ingin melanjutkan registrasi?',
            style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
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
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: Text(
                'Daftar',
                style: AppTextStyle.titleSm.copyWith(color: AppColor.white),
              ),
            ),
          ],
        );
      },
    );

    if (!mounted || confirm != true) {
      return;
    }

    context.read<RegisterBloc>().add(
      RegisterEvent.register(
        username: username,
        password: password,
        namaLengkap: namaLengkap,
        email: email,
      ),
    );
  }

  void _showError(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  void _showSuccess(String message) {
    showDialog(
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
                  Icons.check_rounded,
                  color: AppColor.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  'Registrasi Berhasil',
                  style: AppTextStyle.titleLg.copyWith(
                    color: AppColor.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          content: Text(
            message,
            style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
          ),
          actions: [
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
                Navigator.of(dialogContext).pop();
                GoRouter.of(context).go(AppRoutes.login);
              },
              child: Text(
                'OK',
                style: AppTextStyle.titleSm.copyWith(color: AppColor.white),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RegisterBloc(UserRepository()),
      child: Scaffold(
        backgroundColor: AppColor.primary400,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Registrasi ', style: AppTextStyle.headlineMd),
                    Text(
                      'Akun',
                      style: AppTextStyle.headlineMd.copyWith(
                        color: AppColor.secondary,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                Text(
                  'Buat akun baru untuk mulai menggunakan aplikasi.',
                  style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
                ),

                const SizedBox(height: 32),

                // =========================
                // USERNAME
                // =========================
                _buildLabel('Username'),
                const SizedBox(height: 8),

                TextField(
                  controller: _usernameController,
                  style: AppTextStyle.bodyMd,
                  decoration: _inputDecoration(
                    hint: 'Masukkan username Anda',
                    icon: Icons.person_outline,
                  ),
                ),

                const SizedBox(height: 16),

                // =========================
                // NAMA LENGKAP
                // =========================
                _buildLabel('Nama Lengkap'),
                const SizedBox(height: 8),

                TextField(
                  controller: _namaLengkapController,
                  style: AppTextStyle.bodyMd,
                  decoration: _inputDecoration(
                    hint: 'Masukkan nama lengkap Anda',
                    icon: Icons.badge_outlined,
                  ),
                ),

                const SizedBox(height: 16),

                // =========================
                // EMAIL
                // =========================
                _buildLabel('Email'),
                const SizedBox(height: 8),

                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: AppTextStyle.bodyMd,
                  decoration: _inputDecoration(
                    hint: 'Masukkan email Anda',
                    icon: Icons.email_outlined,
                  ),
                ),

                const SizedBox(height: 16),

                // =========================
                // PASSWORD
                // =========================
                _buildLabel('Password'),
                const SizedBox(height: 8),

                TextField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  style: AppTextStyle.bodyMd,
                  decoration: _inputDecoration(
                    hint: 'Masukkan password Anda',
                    icon: Icons.lock_outline,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: AppColor.gray,
                        size: 20,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 6),

                // Indikator password realtime
                Row(
                  children: [
                    Icon(
                      _isPasswordValid
                          ? Icons.check_circle_outline
                          : Icons.info_outline,
                      size: 16,
                      color: _isPasswordValid
                          ? AppColor.secondary
                          : AppColor.gray,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Password minimal 8 karakter',
                      style: AppTextStyle.bodySm.copyWith(
                        color: _isPasswordValid
                            ? AppColor.secondary
                            : AppColor.gray,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // =========================
                // RE-TYPE PASSWORD
                // =========================
                _buildLabel('Re-type Password'),
                const SizedBox(height: 8),

                TextField(
                  controller: _retypePasswordController,
                  obscureText: _obscureRetypePassword,
                  style: AppTextStyle.bodyMd,
                  decoration: _inputDecoration(
                    hint: 'Masukkan ulang password Anda',
                    icon: Icons.lock_outline,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureRetypePassword = !_obscureRetypePassword;
                        });
                      },
                      icon: Icon(
                        _obscureRetypePassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: AppColor.gray,
                        size: 20,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 32),

                // =========================
                // BUTTON REGISTER
                // =========================
                BlocConsumer<RegisterBloc, RegisterState>(
                  listener: (context, state) {
                    if (state.status.isLoaded) {
                      _showSuccess(
                        state.message ?? 'Data berhasil didaftarkan.',
                      );
                    }

                    if (state.status.isError) {
                      _showError(state.error);
                    }
                  },
                  builder: (context, state) {
                    final isDisabled = state.status.isLoading || !_canRegister;

                    return SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.resolveWith<Color>((states) {
                                if (states.contains(WidgetState.disabled)) {
                                  return AppColor.gray;
                                }

                                return AppColor.secondary;
                              }),
                          foregroundColor: const WidgetStatePropertyAll(
                            AppColor.white,
                          ),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),

                        // Disabled jika:
                        // - sedang loading
                        // - ada field yang kosong
                        // - password kurang dari 8 karakter
                        onPressed: isDisabled ? null : () => _submit(context),

                        child: state.status.isLoading
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(),
                              )
                            : const Text(
                                'Daftar Sekarang',
                                style: TextStyle(color: AppColor.white),
                              ),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 24),

                // =========================
                // LOGIN
                // =========================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sudah punya akun?',
                      style: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
                    ),
                    const SizedBox(width: 4),
                    InkWell(
                      onTap: () {
                        GoRouter.of(context).pushNamed(AppRoutes.login);
                      },
                      child: Text(
                        'Masuk',
                        style: AppTextStyle.titleSm.copyWith(
                          color: AppColor.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: AppTextStyle.titleMd.copyWith(color: AppColor.gray),
    );
  }

  InputDecoration _inputDecoration({
    required String hint,
    required IconData icon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      prefixIcon: Icon(icon, color: AppColor.gray),
      suffixIcon: suffixIcon,
      hintText: hint,
      hintStyle: AppTextStyle.bodyMd.copyWith(color: AppColor.gray),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColor.primary),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColor.primary),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColor.secondary),
      ),
      filled: true,
      fillColor: AppColor.primaryBold,
    );
  }
}
