// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komentar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KomentarEvent {

 int get idBerita;
/// Create a copy of KomentarEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomentarEventCopyWith<KomentarEvent> get copyWith => _$KomentarEventCopyWithImpl<KomentarEvent>(this as KomentarEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomentarEvent&&(identical(other.idBerita, idBerita) || other.idBerita == idBerita));
}


@override
int get hashCode => Object.hash(runtimeType,idBerita);

@override
String toString() {
  return 'KomentarEvent(idBerita: $idBerita)';
}


}

/// @nodoc
abstract mixin class $KomentarEventCopyWith<$Res>  {
  factory $KomentarEventCopyWith(KomentarEvent value, $Res Function(KomentarEvent) _then) = _$KomentarEventCopyWithImpl;
@useResult
$Res call({
 int idBerita
});




}
/// @nodoc
class _$KomentarEventCopyWithImpl<$Res>
    implements $KomentarEventCopyWith<$Res> {
  _$KomentarEventCopyWithImpl(this._self, this._then);

  final KomentarEvent _self;
  final $Res Function(KomentarEvent) _then;

/// Create a copy of KomentarEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idBerita = null,}) {
  return _then(_self.copyWith(
idBerita: null == idBerita ? _self.idBerita : idBerita // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [KomentarEvent].
extension KomentarEventPatterns on KomentarEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetch value)?  fetch,TResult Function( _Add value)?  add,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _Add() when add != null:
return add(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetch value)  fetch,required TResult Function( _Add value)  add,}){
final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that);case _Add():
return add(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetch value)?  fetch,TResult? Function( _Add value)?  add,}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _Add() when add != null:
return add(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int idBerita)?  fetch,TResult Function( int idBerita,  int idUser,  String komentar)?  add,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that.idBerita);case _Add() when add != null:
return add(_that.idBerita,_that.idUser,_that.komentar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int idBerita)  fetch,required TResult Function( int idBerita,  int idUser,  String komentar)  add,}) {final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that.idBerita);case _Add():
return add(_that.idBerita,_that.idUser,_that.komentar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int idBerita)?  fetch,TResult? Function( int idBerita,  int idUser,  String komentar)?  add,}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that.idBerita);case _Add() when add != null:
return add(_that.idBerita,_that.idUser,_that.komentar);case _:
  return null;

}
}

}

/// @nodoc


class _Fetch implements KomentarEvent {
  const _Fetch({required this.idBerita});
  

@override final  int idBerita;

/// Create a copy of KomentarEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchCopyWith<_Fetch> get copyWith => __$FetchCopyWithImpl<_Fetch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch&&(identical(other.idBerita, idBerita) || other.idBerita == idBerita));
}


@override
int get hashCode => Object.hash(runtimeType,idBerita);

@override
String toString() {
  return 'KomentarEvent.fetch(idBerita: $idBerita)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $KomentarEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) _then) = __$FetchCopyWithImpl;
@override @useResult
$Res call({
 int idBerita
});




}
/// @nodoc
class __$FetchCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(this._self, this._then);

  final _Fetch _self;
  final $Res Function(_Fetch) _then;

/// Create a copy of KomentarEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idBerita = null,}) {
  return _then(_Fetch(
idBerita: null == idBerita ? _self.idBerita : idBerita // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Add implements KomentarEvent {
  const _Add({required this.idBerita, required this.idUser, required this.komentar});
  

@override final  int idBerita;
 final  int idUser;
 final  String komentar;

/// Create a copy of KomentarEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCopyWith<_Add> get copyWith => __$AddCopyWithImpl<_Add>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Add&&(identical(other.idBerita, idBerita) || other.idBerita == idBerita)&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.komentar, komentar) || other.komentar == komentar));
}


@override
int get hashCode => Object.hash(runtimeType,idBerita,idUser,komentar);

@override
String toString() {
  return 'KomentarEvent.add(idBerita: $idBerita, idUser: $idUser, komentar: $komentar)';
}


}

/// @nodoc
abstract mixin class _$AddCopyWith<$Res> implements $KomentarEventCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) _then) = __$AddCopyWithImpl;
@override @useResult
$Res call({
 int idBerita, int idUser, String komentar
});




}
/// @nodoc
class __$AddCopyWithImpl<$Res>
    implements _$AddCopyWith<$Res> {
  __$AddCopyWithImpl(this._self, this._then);

  final _Add _self;
  final $Res Function(_Add) _then;

/// Create a copy of KomentarEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idBerita = null,Object? idUser = null,Object? komentar = null,}) {
  return _then(_Add(
idBerita: null == idBerita ? _self.idBerita : idBerita // ignore: cast_nullable_to_non_nullable
as int,idUser: null == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int,komentar: null == komentar ? _self.komentar : komentar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$KomentarState {

 KomentarListStatus get listStatus; KomentarAddStatus get addStatus; List<KomentarModel> get data; String get error; String get addError;
/// Create a copy of KomentarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomentarStateCopyWith<KomentarState> get copyWith => _$KomentarStateCopyWithImpl<KomentarState>(this as KomentarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomentarState&&(identical(other.listStatus, listStatus) || other.listStatus == listStatus)&&(identical(other.addStatus, addStatus) || other.addStatus == addStatus)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.error, error) || other.error == error)&&(identical(other.addError, addError) || other.addError == addError));
}


@override
int get hashCode => Object.hash(runtimeType,listStatus,addStatus,const DeepCollectionEquality().hash(data),error,addError);

@override
String toString() {
  return 'KomentarState(listStatus: $listStatus, addStatus: $addStatus, data: $data, error: $error, addError: $addError)';
}


}

/// @nodoc
abstract mixin class $KomentarStateCopyWith<$Res>  {
  factory $KomentarStateCopyWith(KomentarState value, $Res Function(KomentarState) _then) = _$KomentarStateCopyWithImpl;
@useResult
$Res call({
 KomentarListStatus listStatus, KomentarAddStatus addStatus, List<KomentarModel> data, String error, String addError
});




}
/// @nodoc
class _$KomentarStateCopyWithImpl<$Res>
    implements $KomentarStateCopyWith<$Res> {
  _$KomentarStateCopyWithImpl(this._self, this._then);

  final KomentarState _self;
  final $Res Function(KomentarState) _then;

/// Create a copy of KomentarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listStatus = null,Object? addStatus = null,Object? data = null,Object? error = null,Object? addError = null,}) {
  return _then(_self.copyWith(
listStatus: null == listStatus ? _self.listStatus : listStatus // ignore: cast_nullable_to_non_nullable
as KomentarListStatus,addStatus: null == addStatus ? _self.addStatus : addStatus // ignore: cast_nullable_to_non_nullable
as KomentarAddStatus,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<KomentarModel>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,addError: null == addError ? _self.addError : addError // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KomentarState].
extension KomentarStatePatterns on KomentarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KomentarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KomentarState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KomentarState value)  $default,){
final _that = this;
switch (_that) {
case _KomentarState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KomentarState value)?  $default,){
final _that = this;
switch (_that) {
case _KomentarState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( KomentarListStatus listStatus,  KomentarAddStatus addStatus,  List<KomentarModel> data,  String error,  String addError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KomentarState() when $default != null:
return $default(_that.listStatus,_that.addStatus,_that.data,_that.error,_that.addError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( KomentarListStatus listStatus,  KomentarAddStatus addStatus,  List<KomentarModel> data,  String error,  String addError)  $default,) {final _that = this;
switch (_that) {
case _KomentarState():
return $default(_that.listStatus,_that.addStatus,_that.data,_that.error,_that.addError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( KomentarListStatus listStatus,  KomentarAddStatus addStatus,  List<KomentarModel> data,  String error,  String addError)?  $default,) {final _that = this;
switch (_that) {
case _KomentarState() when $default != null:
return $default(_that.listStatus,_that.addStatus,_that.data,_that.error,_that.addError);case _:
  return null;

}
}

}

/// @nodoc


class _KomentarState implements KomentarState {
  const _KomentarState({this.listStatus = KomentarListStatus.initial, this.addStatus = KomentarAddStatus.initial, final  List<KomentarModel> data = const [], this.error = '', this.addError = ''}): _data = data;
  

@override@JsonKey() final  KomentarListStatus listStatus;
@override@JsonKey() final  KomentarAddStatus addStatus;
 final  List<KomentarModel> _data;
@override@JsonKey() List<KomentarModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  String error;
@override@JsonKey() final  String addError;

/// Create a copy of KomentarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KomentarStateCopyWith<_KomentarState> get copyWith => __$KomentarStateCopyWithImpl<_KomentarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KomentarState&&(identical(other.listStatus, listStatus) || other.listStatus == listStatus)&&(identical(other.addStatus, addStatus) || other.addStatus == addStatus)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.error, error) || other.error == error)&&(identical(other.addError, addError) || other.addError == addError));
}


@override
int get hashCode => Object.hash(runtimeType,listStatus,addStatus,const DeepCollectionEquality().hash(_data),error,addError);

@override
String toString() {
  return 'KomentarState(listStatus: $listStatus, addStatus: $addStatus, data: $data, error: $error, addError: $addError)';
}


}

/// @nodoc
abstract mixin class _$KomentarStateCopyWith<$Res> implements $KomentarStateCopyWith<$Res> {
  factory _$KomentarStateCopyWith(_KomentarState value, $Res Function(_KomentarState) _then) = __$KomentarStateCopyWithImpl;
@override @useResult
$Res call({
 KomentarListStatus listStatus, KomentarAddStatus addStatus, List<KomentarModel> data, String error, String addError
});




}
/// @nodoc
class __$KomentarStateCopyWithImpl<$Res>
    implements _$KomentarStateCopyWith<$Res> {
  __$KomentarStateCopyWithImpl(this._self, this._then);

  final _KomentarState _self;
  final $Res Function(_KomentarState) _then;

/// Create a copy of KomentarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listStatus = null,Object? addStatus = null,Object? data = null,Object? error = null,Object? addError = null,}) {
  return _then(_KomentarState(
listStatus: null == listStatus ? _self.listStatus : listStatus // ignore: cast_nullable_to_non_nullable
as KomentarListStatus,addStatus: null == addStatus ? _self.addStatus : addStatus // ignore: cast_nullable_to_non_nullable
as KomentarAddStatus,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<KomentarModel>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,addError: null == addError ? _self.addError : addError // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
