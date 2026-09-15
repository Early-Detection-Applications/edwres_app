import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/data/repository/profile_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/profile_model.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _repository;

  ProfileBloc(this._repository) : super(const ProfileState()) {
    on<_FetchProfile>(_onFetchProfile);
    on<_UpdateProfile>(_onUpdateProfile);
  }

  Future<void> _onFetchProfile(
    _FetchProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: ProfileStatus.loading, error: ''));

    try {
      final username = SessionManager.username;

      if (username == null || username.trim().isEmpty) {
        throw Exception('Username user tidak ditemukan.');
      }

      final profile = await _repository.getProfile(username: username);

      emit(
        state.copyWith(
          status: ProfileStatus.loaded,
          profile: profile,
          error: '',
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ProfileStatus.error, error: e.toString()));
    }
  }

  Future<void> _onUpdateProfile(
    _UpdateProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(updateStatus: ProfileStatus.loading, error: ''));

    try {
      final profile = await _repository.updateProfile(
        currentUsername: event.currentUsername,
        username: event.username,
        namaLengkap: event.namaLengkap,
        namaPanggilan: event.namaPanggilan,
        asalSekolah: event.asalSekolah,
        kelasJurusan: event.kelasJurusan,
        email: event.email,
        password: event.password,
        passwordConfirmation: event.passwordConfirmation,
        fileFotoPath: event.fileFotoPath,
      );

      emit(
        state.copyWith(
          updateStatus: ProfileStatus.loaded,
          profile: profile,
          error: '',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(updateStatus: ProfileStatus.error, error: e.toString()),
      );
    }
  }
}

enum ProfileStatus { initial, loading, loaded, error }

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetchProfile() = _FetchProfile;

  const factory ProfileEvent.updateProfile({
    required String currentUsername,
    required String username,
    required String namaLengkap,
    required String namaPanggilan,
    required String asalSekolah,
    required String kelasJurusan,
    required String email,
    String? password,
    String? passwordConfirmation,
    String? fileFotoPath,
  }) = _UpdateProfile;
}

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileStatus.initial) ProfileStatus status,

    @Default(ProfileStatus.initial) ProfileStatus updateStatus,

    ProfileModel? profile,

    @Default('') String error,
  }) = _ProfileState;
}
