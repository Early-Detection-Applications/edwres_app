// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchProfile value)?  fetchProfile,TResult Function( _UpdateProfile value)?  updateProfile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchProfile() when fetchProfile != null:
return fetchProfile(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchProfile value)  fetchProfile,required TResult Function( _UpdateProfile value)  updateProfile,}){
final _that = this;
switch (_that) {
case _FetchProfile():
return fetchProfile(_that);case _UpdateProfile():
return updateProfile(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchProfile value)?  fetchProfile,TResult? Function( _UpdateProfile value)?  updateProfile,}){
final _that = this;
switch (_that) {
case _FetchProfile() when fetchProfile != null:
return fetchProfile(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchProfile,TResult Function( String currentUsername,  String username,  String namaLengkap,  String namaPanggilan,  String asalSekolah,  String kelasJurusan,  String email,  String? password,  String? passwordConfirmation,  String? fileFotoPath)?  updateProfile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchProfile() when fetchProfile != null:
return fetchProfile();case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.currentUsername,_that.username,_that.namaLengkap,_that.namaPanggilan,_that.asalSekolah,_that.kelasJurusan,_that.email,_that.password,_that.passwordConfirmation,_that.fileFotoPath);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchProfile,required TResult Function( String currentUsername,  String username,  String namaLengkap,  String namaPanggilan,  String asalSekolah,  String kelasJurusan,  String email,  String? password,  String? passwordConfirmation,  String? fileFotoPath)  updateProfile,}) {final _that = this;
switch (_that) {
case _FetchProfile():
return fetchProfile();case _UpdateProfile():
return updateProfile(_that.currentUsername,_that.username,_that.namaLengkap,_that.namaPanggilan,_that.asalSekolah,_that.kelasJurusan,_that.email,_that.password,_that.passwordConfirmation,_that.fileFotoPath);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchProfile,TResult? Function( String currentUsername,  String username,  String namaLengkap,  String namaPanggilan,  String asalSekolah,  String kelasJurusan,  String email,  String? password,  String? passwordConfirmation,  String? fileFotoPath)?  updateProfile,}) {final _that = this;
switch (_that) {
case _FetchProfile() when fetchProfile != null:
return fetchProfile();case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.currentUsername,_that.username,_that.namaLengkap,_that.namaPanggilan,_that.asalSekolah,_that.kelasJurusan,_that.email,_that.password,_that.passwordConfirmation,_that.fileFotoPath);case _:
  return null;

}
}

}

/// @nodoc


class _FetchProfile implements ProfileEvent {
  const _FetchProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.fetchProfile()';
}


}




/// @nodoc


class _UpdateProfile implements ProfileEvent {
  const _UpdateProfile({required this.currentUsername, required this.username, required this.namaLengkap, required this.namaPanggilan, required this.asalSekolah, required this.kelasJurusan, required this.email, this.password, this.passwordConfirmation, this.fileFotoPath});
  

 final  String currentUsername;
 final  String username;
 final  String namaLengkap;
 final  String namaPanggilan;
 final  String asalSekolah;
 final  String kelasJurusan;
 final  String email;
 final  String? password;
 final  String? passwordConfirmation;
 final  String? fileFotoPath;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileCopyWith<_UpdateProfile> get copyWith => __$UpdateProfileCopyWithImpl<_UpdateProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfile&&(identical(other.currentUsername, currentUsername) || other.currentUsername == currentUsername)&&(identical(other.username, username) || other.username == username)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.namaPanggilan, namaPanggilan) || other.namaPanggilan == namaPanggilan)&&(identical(other.asalSekolah, asalSekolah) || other.asalSekolah == asalSekolah)&&(identical(other.kelasJurusan, kelasJurusan) || other.kelasJurusan == kelasJurusan)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirmation, passwordConfirmation) || other.passwordConfirmation == passwordConfirmation)&&(identical(other.fileFotoPath, fileFotoPath) || other.fileFotoPath == fileFotoPath));
}


@override
int get hashCode => Object.hash(runtimeType,currentUsername,username,namaLengkap,namaPanggilan,asalSekolah,kelasJurusan,email,password,passwordConfirmation,fileFotoPath);

@override
String toString() {
  return 'ProfileEvent.updateProfile(currentUsername: $currentUsername, username: $username, namaLengkap: $namaLengkap, namaPanggilan: $namaPanggilan, asalSekolah: $asalSekolah, kelasJurusan: $kelasJurusan, email: $email, password: $password, passwordConfirmation: $passwordConfirmation, fileFotoPath: $fileFotoPath)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$UpdateProfileCopyWith(_UpdateProfile value, $Res Function(_UpdateProfile) _then) = __$UpdateProfileCopyWithImpl;
@useResult
$Res call({
 String currentUsername, String username, String namaLengkap, String namaPanggilan, String asalSekolah, String kelasJurusan, String email, String? password, String? passwordConfirmation, String? fileFotoPath
});




}
/// @nodoc
class __$UpdateProfileCopyWithImpl<$Res>
    implements _$UpdateProfileCopyWith<$Res> {
  __$UpdateProfileCopyWithImpl(this._self, this._then);

  final _UpdateProfile _self;
  final $Res Function(_UpdateProfile) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentUsername = null,Object? username = null,Object? namaLengkap = null,Object? namaPanggilan = null,Object? asalSekolah = null,Object? kelasJurusan = null,Object? email = null,Object? password = freezed,Object? passwordConfirmation = freezed,Object? fileFotoPath = freezed,}) {
  return _then(_UpdateProfile(
currentUsername: null == currentUsername ? _self.currentUsername : currentUsername // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,namaLengkap: null == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String,namaPanggilan: null == namaPanggilan ? _self.namaPanggilan : namaPanggilan // ignore: cast_nullable_to_non_nullable
as String,asalSekolah: null == asalSekolah ? _self.asalSekolah : asalSekolah // ignore: cast_nullable_to_non_nullable
as String,kelasJurusan: null == kelasJurusan ? _self.kelasJurusan : kelasJurusan // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,passwordConfirmation: freezed == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String?,fileFotoPath: freezed == fileFotoPath ? _self.fileFotoPath : fileFotoPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ProfileState {

 ProfileStatus get status; ProfileStatus get updateStatus; ProfileModel? get profile; String get error;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.status, status) || other.status == status)&&(identical(other.updateStatus, updateStatus) || other.updateStatus == updateStatus)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,updateStatus,profile,error);

@override
String toString() {
  return 'ProfileState(status: $status, updateStatus: $updateStatus, profile: $profile, error: $error)';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 ProfileStatus status, ProfileStatus updateStatus, ProfileModel? profile, String error
});


$ProfileModelCopyWith<$Res>? get profile;

}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? updateStatus = null,Object? profile = freezed,Object? error = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfileStatus,updateStatus: null == updateStatus ? _self.updateStatus : updateStatus // ignore: cast_nullable_to_non_nullable
as ProfileStatus,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileModel?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $ProfileModelCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProfileStatus status,  ProfileStatus updateStatus,  ProfileModel? profile,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.status,_that.updateStatus,_that.profile,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProfileStatus status,  ProfileStatus updateStatus,  ProfileModel? profile,  String error)  $default,) {final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that.status,_that.updateStatus,_that.profile,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProfileStatus status,  ProfileStatus updateStatus,  ProfileModel? profile,  String error)?  $default,) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.status,_that.updateStatus,_that.profile,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileState implements ProfileState {
  const _ProfileState({this.status = ProfileStatus.initial, this.updateStatus = ProfileStatus.initial, this.profile, this.error = ''});
  

@override@JsonKey() final  ProfileStatus status;
@override@JsonKey() final  ProfileStatus updateStatus;
@override final  ProfileModel? profile;
@override@JsonKey() final  String error;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateCopyWith<_ProfileState> get copyWith => __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileState&&(identical(other.status, status) || other.status == status)&&(identical(other.updateStatus, updateStatus) || other.updateStatus == updateStatus)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,updateStatus,profile,error);

@override
String toString() {
  return 'ProfileState(status: $status, updateStatus: $updateStatus, profile: $profile, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(_ProfileState value, $Res Function(_ProfileState) _then) = __$ProfileStateCopyWithImpl;
@override @useResult
$Res call({
 ProfileStatus status, ProfileStatus updateStatus, ProfileModel? profile, String error
});


@override $ProfileModelCopyWith<$Res>? get profile;

}
/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? updateStatus = null,Object? profile = freezed,Object? error = null,}) {
  return _then(_ProfileState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfileStatus,updateStatus: null == updateStatus ? _self.updateStatus : updateStatus // ignore: cast_nullable_to_non_nullable
as ProfileStatus,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileModel?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $ProfileModelCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

// dart format on
