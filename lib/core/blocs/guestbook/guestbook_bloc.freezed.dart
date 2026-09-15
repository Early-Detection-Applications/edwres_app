// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guestbook_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GuestbookEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuestbookEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GuestbookEvent()';
}


}

/// @nodoc
class $GuestbookEventCopyWith<$Res>  {
$GuestbookEventCopyWith(GuestbookEvent _, $Res Function(GuestbookEvent) __);
}


/// Adds pattern-matching-related methods to [GuestbookEvent].
extension GuestbookEventPatterns on GuestbookEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetch value)?  fetch,TResult Function( _Create value)?  create,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _Create() when create != null:
return create(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetch value)  fetch,required TResult Function( _Create value)  create,}){
final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that);case _Create():
return create(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetch value)?  fetch,TResult? Function( _Create value)?  create,}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _Create() when create != null:
return create(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetch,TResult Function( String nama,  String email,  String pesan,  String turnstileToken)?  create,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch();case _Create() when create != null:
return create(_that.nama,_that.email,_that.pesan,_that.turnstileToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetch,required TResult Function( String nama,  String email,  String pesan,  String turnstileToken)  create,}) {final _that = this;
switch (_that) {
case _Fetch():
return fetch();case _Create():
return create(_that.nama,_that.email,_that.pesan,_that.turnstileToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetch,TResult? Function( String nama,  String email,  String pesan,  String turnstileToken)?  create,}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch();case _Create() when create != null:
return create(_that.nama,_that.email,_that.pesan,_that.turnstileToken);case _:
  return null;

}
}

}

/// @nodoc


class _Fetch implements GuestbookEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GuestbookEvent.fetch()';
}


}




/// @nodoc


class _Create implements GuestbookEvent {
  const _Create({required this.nama, required this.email, required this.pesan, required this.turnstileToken});
  

 final  String nama;
 final  String email;
 final  String pesan;
 final  String turnstileToken;

/// Create a copy of GuestbookEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCopyWith<_Create> get copyWith => __$CreateCopyWithImpl<_Create>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Create&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.email, email) || other.email == email)&&(identical(other.pesan, pesan) || other.pesan == pesan)&&(identical(other.turnstileToken, turnstileToken) || other.turnstileToken == turnstileToken));
}


@override
int get hashCode => Object.hash(runtimeType,nama,email,pesan,turnstileToken);

@override
String toString() {
  return 'GuestbookEvent.create(nama: $nama, email: $email, pesan: $pesan, turnstileToken: $turnstileToken)';
}


}

/// @nodoc
abstract mixin class _$CreateCopyWith<$Res> implements $GuestbookEventCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) _then) = __$CreateCopyWithImpl;
@useResult
$Res call({
 String nama, String email, String pesan, String turnstileToken
});




}
/// @nodoc
class __$CreateCopyWithImpl<$Res>
    implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(this._self, this._then);

  final _Create _self;
  final $Res Function(_Create) _then;

/// Create a copy of GuestbookEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nama = null,Object? email = null,Object? pesan = null,Object? turnstileToken = null,}) {
  return _then(_Create(
nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,pesan: null == pesan ? _self.pesan : pesan // ignore: cast_nullable_to_non_nullable
as String,turnstileToken: null == turnstileToken ? _self.turnstileToken : turnstileToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GuestbookState {

 GuestbookStateStatus get status; GuestbookStateStatus get createStatus; List<GuestbookModel>? get data; String? get error; String? get createError;
/// Create a copy of GuestbookState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuestbookStateCopyWith<GuestbookState> get copyWith => _$GuestbookStateCopyWithImpl<GuestbookState>(this as GuestbookState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuestbookState&&(identical(other.status, status) || other.status == status)&&(identical(other.createStatus, createStatus) || other.createStatus == createStatus)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.error, error) || other.error == error)&&(identical(other.createError, createError) || other.createError == createError));
}


@override
int get hashCode => Object.hash(runtimeType,status,createStatus,const DeepCollectionEquality().hash(data),error,createError);

@override
String toString() {
  return 'GuestbookState(status: $status, createStatus: $createStatus, data: $data, error: $error, createError: $createError)';
}


}

/// @nodoc
abstract mixin class $GuestbookStateCopyWith<$Res>  {
  factory $GuestbookStateCopyWith(GuestbookState value, $Res Function(GuestbookState) _then) = _$GuestbookStateCopyWithImpl;
@useResult
$Res call({
 GuestbookStateStatus status, GuestbookStateStatus createStatus, List<GuestbookModel>? data, String? error, String? createError
});




}
/// @nodoc
class _$GuestbookStateCopyWithImpl<$Res>
    implements $GuestbookStateCopyWith<$Res> {
  _$GuestbookStateCopyWithImpl(this._self, this._then);

  final GuestbookState _self;
  final $Res Function(GuestbookState) _then;

/// Create a copy of GuestbookState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? createStatus = null,Object? data = freezed,Object? error = freezed,Object? createError = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GuestbookStateStatus,createStatus: null == createStatus ? _self.createStatus : createStatus // ignore: cast_nullable_to_non_nullable
as GuestbookStateStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<GuestbookModel>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,createError: freezed == createError ? _self.createError : createError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GuestbookState].
extension GuestbookStatePatterns on GuestbookState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuestbookState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuestbookState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuestbookState value)  $default,){
final _that = this;
switch (_that) {
case _GuestbookState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuestbookState value)?  $default,){
final _that = this;
switch (_that) {
case _GuestbookState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GuestbookStateStatus status,  GuestbookStateStatus createStatus,  List<GuestbookModel>? data,  String? error,  String? createError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuestbookState() when $default != null:
return $default(_that.status,_that.createStatus,_that.data,_that.error,_that.createError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GuestbookStateStatus status,  GuestbookStateStatus createStatus,  List<GuestbookModel>? data,  String? error,  String? createError)  $default,) {final _that = this;
switch (_that) {
case _GuestbookState():
return $default(_that.status,_that.createStatus,_that.data,_that.error,_that.createError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GuestbookStateStatus status,  GuestbookStateStatus createStatus,  List<GuestbookModel>? data,  String? error,  String? createError)?  $default,) {final _that = this;
switch (_that) {
case _GuestbookState() when $default != null:
return $default(_that.status,_that.createStatus,_that.data,_that.error,_that.createError);case _:
  return null;

}
}

}

/// @nodoc


class _GuestbookState implements GuestbookState {
  const _GuestbookState({this.status = GuestbookStateStatus.initial, this.createStatus = GuestbookStateStatus.initial, final  List<GuestbookModel>? data, this.error = '', this.createError = ''}): _data = data;
  

@override@JsonKey() final  GuestbookStateStatus status;
@override@JsonKey() final  GuestbookStateStatus createStatus;
 final  List<GuestbookModel>? _data;
@override List<GuestbookModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? error;
@override@JsonKey() final  String? createError;

/// Create a copy of GuestbookState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuestbookStateCopyWith<_GuestbookState> get copyWith => __$GuestbookStateCopyWithImpl<_GuestbookState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuestbookState&&(identical(other.status, status) || other.status == status)&&(identical(other.createStatus, createStatus) || other.createStatus == createStatus)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.error, error) || other.error == error)&&(identical(other.createError, createError) || other.createError == createError));
}


@override
int get hashCode => Object.hash(runtimeType,status,createStatus,const DeepCollectionEquality().hash(_data),error,createError);

@override
String toString() {
  return 'GuestbookState(status: $status, createStatus: $createStatus, data: $data, error: $error, createError: $createError)';
}


}

/// @nodoc
abstract mixin class _$GuestbookStateCopyWith<$Res> implements $GuestbookStateCopyWith<$Res> {
  factory _$GuestbookStateCopyWith(_GuestbookState value, $Res Function(_GuestbookState) _then) = __$GuestbookStateCopyWithImpl;
@override @useResult
$Res call({
 GuestbookStateStatus status, GuestbookStateStatus createStatus, List<GuestbookModel>? data, String? error, String? createError
});




}
/// @nodoc
class __$GuestbookStateCopyWithImpl<$Res>
    implements _$GuestbookStateCopyWith<$Res> {
  __$GuestbookStateCopyWithImpl(this._self, this._then);

  final _GuestbookState _self;
  final $Res Function(_GuestbookState) _then;

/// Create a copy of GuestbookState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? createStatus = null,Object? data = freezed,Object? error = freezed,Object? createError = freezed,}) {
  return _then(_GuestbookState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GuestbookStateStatus,createStatus: null == createStatus ? _self.createStatus : createStatus // ignore: cast_nullable_to_non_nullable
as GuestbookStateStatus,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<GuestbookModel>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,createError: freezed == createError ? _self.createError : createError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
