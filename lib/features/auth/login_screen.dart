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
import 'package:edwres_app/app/theme/theme.dart';
import 'package:edwres_app/core/blocs/auth/auth.dart';
import 'package:edwres_app/data/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obsecurePassword = true;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _usernameController.addListener(_refresh);
    _passwordController.addListener(_refresh);
  }

  void _refresh() {
    setState(() {});
  }

  @override
  void dispose() {
    _usernameController.removeListener(_refresh);
    _passwordController.removeListener(_refresh);

    _usernameController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  bool get _canLogin =>
      _usernameController.text.trim().isNotEmpty &&
      _passwordController.text.trim().isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(UserRepository()),
      child: Scaffold(
        body: Container(
          color: AppColor.primary400,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 48.0,
              left: 16.0,
              right: 16.0,
              bottom: 32.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Masuk Ke', style: AppTextStyle.headlineMd),
                    const SizedBox(width: 8.0),
                    Text(
                      'Akun',
                      style: AppTextStyle.headlineMd.copyWith(
                        color: AppColor.secondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
                Text(
                  'Username/Email',
                  style: AppTextStyle.titleMd.copyWith(color: AppColor.gray),
                ),
                const SizedBox(height: 8.0),
                TextField(
                  controller: _usernameController,
                  style: AppTextStyle.bodyMd,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person, color: AppColor.gray),
                    hintText: 'Masukkan username atau email Anda',
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
                Text(
                  'Password',
                  style: AppTextStyle.titleMd.copyWith(color: AppColor.gray),
                ),
                const SizedBox(height: 8.0),
                TextField(
                  controller: _passwordController,
                  obscureText: _obsecurePassword,
                  style: AppTextStyle.bodyMd,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock, color: AppColor.gray),
                    suffixIcon: IconButton(
                      splashRadius: 20,
                      onPressed: () {
                        setState(() {
                          _obsecurePassword = !_obsecurePassword;
                        });
                      },
                      icon: Icon(
                        _obsecurePassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: AppColor.gray,
                        size: 20,
                      ),
                    ),
                    hintText: 'Masukkan password Anda',
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
                const SizedBox(height: 32.0),
                BlocConsumer<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if (state.status.isLoaded) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Login berhasil')),
                      );
                      GoRouter.of(context).push(AppRoutes.home);
                    }
                    if (state.status.isError) {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text(state.error)));
                    }
                  },
                  builder: (context, state) {
                    return SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: state.status.isLoading || !_canLogin
                            ? null
                            : () {
                                context.read<LoginBloc>().add(
                                  LoginEvent.login(
                                    username: _usernameController.text,
                                    password: _passwordController.text,
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
                        child: state.status.isLoading
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(),
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Masuk Sekarang',
                                    style: AppTextStyle.bodyMd.copyWith(
                                      color: AppColor.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Icon(Icons.login, color: AppColor.white),
                                ],
                              ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Fitur ini belum tersedia. Masih dalam proses pengembangan.',
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'Lupa Password?',
                      style: TextStyle(color: AppColor.secondary),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(color: Color(0xFF3A5562), thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'ATAU',
                        style: TextStyle(
                          color: Color(0xFF64748B),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 6,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Divider(color: Color(0xFF3A5562), thickness: 1),
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Fitur ini belum tersedia. Masih dalam proses pengembangan.',
                          ),
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xFF1F5B68),
                      side: BorderSide(
                        color: Colors.white.withValues(alpha: 0.12),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                          size: 14,
                        ),
                        SizedBox(width: 16),
                        Text(
                          'Akun Google',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum punya akun?',
                        style: TextStyle(color: AppColor.gray),
                      ),
                      const SizedBox(width: 4.0),
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Fitur ini belum tersedia. Masih dalam proses pengembangan.',
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'Daftar',
                          style: AppTextStyle.titleSm.copyWith(
                            color: AppColor.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
