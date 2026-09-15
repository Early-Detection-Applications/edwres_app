import 'dart:io';

import 'package:edwres_app/app/app.dart';
import 'package:edwres_app/core/blocs/auth/profile_bloc.dart';
import 'package:edwres_app/core/widgets/app_drawer.dart';
import 'package:edwres_app/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  final _namaLengkapController = TextEditingController();

  final _namaPanggilanController = TextEditingController();

  final _asalSekolahController = TextEditingController();

  final _kelasJurusanController = TextEditingController();

  final _emailController = TextEditingController();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  final _passwordConfirmationController = TextEditingController();

  final ImagePicker _imagePicker = ImagePicker();

  String? _selectedImagePath;

  /*
   * Username sebelum diedit.
   *
   * Digunakan untuk mencari user di backend.
   */
  String _currentUsername = '';

  bool _profileLoaded = false;

  @override
  void initState() {
    super.initState();

    context.read<ProfileBloc>().add(const ProfileEvent.fetchProfile());
  }

  @override
  void dispose() {
    _namaLengkapController.dispose();
    _namaPanggilanController.dispose();
    _asalSekolahController.dispose();
    _kelasJurusanController.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();

    super.dispose();
  }

  // ============================================================
  // FILL FORM
  // ============================================================

  void _fillForm(ProfileModel profile) {
    if (_profileLoaded) {
      return;
    }

    _namaLengkapController.text = profile.namaLengkap ?? '';

    _namaPanggilanController.text = profile.namaPanggilan ?? '';

    _asalSekolahController.text = profile.asalSekolah ?? '';

    _kelasJurusanController.text = profile.kelasJurusan ?? '';

    _emailController.text = profile.email ?? '';

    _usernameController.text = profile.username ?? '';

    /*
     * Simpan username asli.
     *
     * Jangan menggunakan _usernameController
     * setelah user mengubah username.
     */
    _currentUsername = profile.username ?? '';

    _profileLoaded = true;
  }

  // ============================================================
  // PICK IMAGE
  // ============================================================

  Future<void> _pickImage() async {
    final XFile? image = await _imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 85,
      maxWidth: 1200,
    );

    if (image == null) {
      return;
    }

    setState(() {
      _selectedImagePath = image.path;
    });
  }

  // ============================================================
  // SUBMIT
  // ============================================================

  Future<void> _submit() async {
    FocusScope.of(context).unfocus();

    if (!_formKey.currentState!.validate()) {
      return;
    }

    final password = _passwordController.text.trim();

    final passwordConfirmation = _passwordConfirmationController.text.trim();

    if (password.isNotEmpty && password != passwordConfirmation) {
      _showMessage('Konfirmasi password tidak sama.', isError: true);

      return;
    }

    /*
     * Pastikan username awal sudah tersedia.
     */
    if (_currentUsername.trim().isEmpty) {
      _showMessage(
        'Username profile tidak ditemukan. Silakan coba lagi.',
        isError: true,
      );

      return;
    }

    context.read<ProfileBloc>().add(
      ProfileEvent.updateProfile(
        namaLengkap: _namaLengkapController.text.trim(),

        namaPanggilan: _namaPanggilanController.text.trim(),

        asalSekolah: _asalSekolahController.text.trim(),

        kelasJurusan: _kelasJurusanController.text.trim(),

        email: _emailController.text.trim(),

        username: _usernameController.text.trim(),

        password: password.isEmpty ? null : password,

        passwordConfirmation: password.isEmpty ? null : passwordConfirmation,

        fileFotoPath: _selectedImagePath,

        /*
         * INI PERUBAHAN UTAMA.
         *
         * Sebelumnya:
         * currentUsername: '',
         *
         * Sekarang:
         */
        currentUsername: _currentUsername,
      ),
    );
  }

  // ============================================================
  // MESSAGE
  // ============================================================

  void _showMessage(String message, {bool isError = false}) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(16),
          backgroundColor: isError ? Colors.red.shade700 : AppColor.primary,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          content: Row(
            children: [
              Icon(
                isError
                    ? Icons.error_outline_rounded
                    : Icons.check_circle_outline_rounded,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state.status == ProfileStatus.loaded) {
          final profile = state.profile;

          if (profile != null) {
            _fillForm(profile);
          }
        }

        if (state.updateStatus == ProfileStatus.loaded) {
          _showMessage('Profile berhasil diperbarui.');

          Navigator.of(context).pop();
        }

        if (state.updateStatus == ProfileStatus.error ||
            state.status == ProfileStatus.error) {
          if (state.error.isNotEmpty) {
            _showMessage(state.error, isError: true);
          }
        }
      },
      child: Scaffold(
        backgroundColor: AppColor.primary400,

        drawer: const AppDrawer(),

        body: SafeArea(
          top: false,
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              final profile = state.profile;

              if (state.status == ProfileStatus.loading && profile == null) {
                return _buildLoading();
              }

              if (state.status == ProfileStatus.error && profile == null) {
                return _buildError(state.error);
              }

              return _buildContent(context, state, profile);
            },
          ),
        ),
      ),
    );
  }

  // ============================================================
  // LOADING
  // ============================================================

  Widget _buildLoading() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.all(17),
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 18),
          Text(
            'Memuat profile...',
            style: TextStyle(
              color: AppColor.primary,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // ERROR
  // ============================================================

  Widget _buildError(String error) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 76,
              height: 76,
              decoration: BoxDecoration(
                color: Colors.red.withValues(alpha: 0.08),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.cloud_off_outlined,
                color: Colors.red.shade700,
                size: 36,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Profile gagal dimuat',
              style: TextStyle(
                color: AppColor.primary,
                fontSize: 21,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              error.isEmpty
                  ? 'Terjadi kesalahan saat mengambil data profile.'
                  : error,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.primary.withValues(alpha: 0.65),
                fontSize: 13,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                _profileLoaded = false;

                context.read<ProfileBloc>().add(
                  const ProfileEvent.fetchProfile(),
                );
              },
              icon: const Icon(Icons.refresh_rounded, size: 19),
              label: const Text('Coba Lagi'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primary,
                foregroundColor: Colors.white,
                elevation: 0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 13,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // CONTENT
  // ============================================================

  Widget _buildContent(
    BuildContext context,
    ProfileState state,
    ProfileModel? profile,
  ) {
    return Column(
      children: [
        _buildTopBar(),

        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 120),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _buildProfileHeader(profile),

                  const SizedBox(height: 28),

                  _buildSectionTitle(
                    icon: Icons.person_outline_rounded,
                    title: 'Informasi Pribadi',
                    subtitle: 'Informasi dasar mengenai diri kamu',
                  ),

                  const SizedBox(height: 15),

                  _buildPersonalFields(),

                  const SizedBox(height: 30),

                  _buildSectionTitle(
                    icon: Icons.manage_accounts_outlined,
                    title: 'Informasi Akun',
                    subtitle: 'Informasi yang digunakan untuk akun',
                  ),

                  const SizedBox(height: 15),

                  _buildAccountFields(),

                  const SizedBox(height: 30),

                  _buildSectionTitle(
                    icon: Icons.lock_outline_rounded,
                    title: 'Keamanan',
                    subtitle: 'Kelola password akun kamu',
                  ),

                  const SizedBox(height: 15),

                  _buildPasswordFields(),

                  const SizedBox(height: 22),

                  _buildSecurityHint(),
                ],
              ),
            ),
          ),
        ),

        _buildBottomSaveButton(state),
      ],
    );
  }

  // ============================================================
  // TOP BAR
  // ============================================================

  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 54, 20, 8),
      child: Row(
        children: [
          Builder(
            builder: (context) {
              return Material(
                color: Colors.white.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(14),
                child: InkWell(
                  borderRadius: BorderRadius.circular(14),
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: const SizedBox(
                    width: 46,
                    height: 46,
                    child: Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                      size: 23,
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'AKUN SAYA',
                  style: TextStyle(
                    color: AppColor.secondary,
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 3),
                const Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // PROFILE HEADER
  // ============================================================

  Widget _buildProfileHeader(ProfileModel? profile) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 116,
              height: 116,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColor.secondary, AppColor.primary],
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(child: _buildAvatar(profile)),
              ),
            ),
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: AppColor.secondary,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.primary400, width: 3),
                ),
                child: Icon(
                  Icons.camera_alt_rounded,
                  color: AppColor.primary,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          profile?.namaLengkap?.trim().isNotEmpty == true
              ? profile!.namaLengkap!
              : 'Nama Pengguna',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 21,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          profile?.username?.trim().isNotEmpty == true
              ? '@${profile!.username!}'
              : '@username',
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.68),
            fontSize: 13,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.10),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white.withValues(alpha: 0.16)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.verified_user_outlined,
                size: 15,
                color: AppColor.secondary,
              ),
              const SizedBox(width: 6),
              Text(
                profile?.level ?? 'User',
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.9),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Ketuk foto untuk mengganti foto profile',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.55),
            fontSize: 11,
          ),
        ),
      ],
    );
  }

  Widget _buildAvatar(ProfileModel? profile) {
    if (_selectedImagePath != null) {
      return Image.file(
        File(_selectedImagePath!),
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) {
          return _defaultAvatar();
        },
      );
    }

    if (profile?.foto != null && profile!.foto!.trim().isNotEmpty) {
      return Image.network(
        profile.foto!,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) {
          return _defaultAvatar();
        },
      );
    }

    return _defaultAvatar();
  }

  Widget _defaultAvatar() {
    return Container(
      color: AppColor.primary400,
      child: Icon(Icons.person_rounded, size: 54, color: AppColor.primary),
    );
  }

  // ============================================================
  // SECTION TITLE
  // ============================================================

  Widget _buildSectionTitle({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.10),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: AppColor.secondary, size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.52),
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ============================================================
  // PERSONAL FIELDS
  // ============================================================

  Widget _buildPersonalFields() {
    return Column(
      children: [
        _buildField(
          controller: _namaLengkapController,
          label: 'Nama Lengkap',
          hint: 'Nama lengkap',
          icon: Icons.badge_outlined,
        ),
        const SizedBox(height: 14),
        _buildField(
          controller: _namaPanggilanController,
          label: 'Nama Panggilan',
          hint: 'Nama panggilan',
          icon: Icons.face_outlined,
        ),
        const SizedBox(height: 14),
        _buildField(
          controller: _asalSekolahController,
          label: 'Asal Sekolah',
          hint: 'Nama sekolah',
          icon: Icons.school_outlined,
        ),
        const SizedBox(height: 14),
        _buildField(
          controller: _kelasJurusanController,
          label: 'Kelas / Jurusan',
          hint: 'Contoh: XII IPA 1',
          icon: Icons.class_outlined,
        ),
      ],
    );
  }

  // ============================================================
  // ACCOUNT FIELDS
  // ============================================================

  Widget _buildAccountFields() {
    return Column(
      children: [
        _buildField(
          controller: _usernameController,
          label: 'Username',
          hint: 'Username',
          icon: Icons.alternate_email_rounded,
        ),
        const SizedBox(height: 14),
        _buildField(
          controller: _emailController,
          label: 'Email',
          hint: 'Alamat email',
          icon: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }

  // ============================================================
  // PASSWORD
  // ============================================================

  Widget _buildPasswordFields() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.07),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Colors.white.withValues(alpha: 0.10)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.info_outline_rounded,
                color: AppColor.secondary,
                size: 19,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Kosongkan kedua field jika kamu tidak ingin mengubah password.',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.68),
                    fontSize: 11.5,
                    height: 1.45,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        _buildPasswordField(
          controller: _passwordController,
          label: 'Password Baru',
          hint: 'Minimal 8 karakter',
        ),
        const SizedBox(height: 14),
        _buildPasswordField(
          controller: _passwordConfirmationController,
          label: 'Konfirmasi Password',
          hint: 'Ulangi password baru',
        ),
      ],
    );
  }

  // ============================================================
  // FIELD
  // ============================================================

  Widget _buildField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required IconData icon,
    TextInputType? keyboardType,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.82),
            fontSize: 11.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 7),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          style: TextStyle(
            color: AppColor.primary,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
          cursorColor: AppColor.secondary,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return '$label wajib diisi.';
            }

            return null;
          },
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: AppColor.primary.withValues(alpha: 0.38),
              fontSize: 13,
            ),
            prefixIcon: Icon(
              icon,
              color: AppColor.primary.withValues(alpha: 0.62),
              size: 20,
            ),
            filled: true,
            fillColor: Colors.white.withValues(alpha: 0.93),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: Colors.white.withValues(alpha: 0.18),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: Colors.white.withValues(alpha: 0.18),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: AppColor.secondary, width: 1.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: Colors.red, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }

  // ============================================================
  // PASSWORD FIELD
  // ============================================================

  Widget _buildPasswordField({
    required TextEditingController controller,
    required String label,
    required String hint,
  }) {
    return _PasswordField(controller: controller, label: label, hint: hint);
  }

  // ============================================================
  // SECURITY HINT
  // ============================================================

  Widget _buildSecurityHint() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.shield_outlined,
          size: 15,
          color: Colors.white.withValues(alpha: 0.45),
        ),
        const SizedBox(width: 6),
        Text(
          'Data profile kamu tetap aman',
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.45),
            fontSize: 11,
          ),
        ),
      ],
    );
  }

  // ============================================================
  // SAVE BUTTON
  // ============================================================

  Widget _buildBottomSaveButton(ProfileState state) {
    final isLoading = state.updateStatus == ProfileStatus.loading;

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 18),
      decoration: BoxDecoration(
        color: AppColor.primary400,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.10),
            blurRadius: 18,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: SizedBox(
        width: double.infinity,
        height: 54,
        child: ElevatedButton(
          onPressed: isLoading ? null : _submit,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.secondary,
            foregroundColor: AppColor.primary,
            disabledBackgroundColor: Colors.white.withValues(alpha: 0.35),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: isLoading
              ? SizedBox(
                  width: 23,
                  height: 23,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.2,
                    color: AppColor.primary,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_rounded,
                      size: 21,
                      color: AppColor.primary,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Simpan Perubahan',
                      style: TextStyle(
                        color: AppColor.primary,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

// ================================================================
// PASSWORD FIELD
// ================================================================

class _PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String hint;

  const _PasswordField({
    required this.controller,
    required this.label,
    required this.hint,
  });

  @override
  State<_PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<_PasswordField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.82),
            fontSize: 11.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 7),
        TextFormField(
          controller: widget.controller,
          obscureText: _obscure,
          style: TextStyle(color: AppColor.primary, fontSize: 13),
          cursorColor: AppColor.secondary,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: TextStyle(
              color: AppColor.primary.withValues(alpha: 0.38),
              fontSize: 13,
            ),
            prefixIcon: Icon(
              Icons.lock_outline_rounded,
              color: AppColor.primary.withValues(alpha: 0.62),
              size: 20,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscure = !_obscure;
                });
              },
              icon: Icon(
                _obscure
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: AppColor.primary.withValues(alpha: 0.62),
              ),
            ),
            filled: true,
            fillColor: Colors.white.withValues(alpha: 0.93),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: Colors.white.withValues(alpha: 0.18),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: Colors.white.withValues(alpha: 0.18),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: AppColor.secondary, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}
