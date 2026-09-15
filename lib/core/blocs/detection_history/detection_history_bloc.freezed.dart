// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detection_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetectionHistoryEvent {

 String? get idUser;
/// Create a copy of DetectionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetectionHistoryEventCopyWith<DetectionHistoryEvent> get copyWith => _$DetectionHistoryEventCopyWithImpl<DetectionHistoryEvent>(this as DetectionHistoryEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetectionHistoryEvent&&(identical(other.idUser, idUser) || other.idUser == idUser));
}


@override
int get hashCode => Object.hash(runtimeType,idUser);

@override
String toString() {
  return 'DetectionHistoryEvent(idUser: $idUser)';
}


}

/// @nodoc
abstract mixin class $DetectionHistoryEventCopyWith<$Res>  {
  factory $DetectionHistoryEventCopyWith(DetectionHistoryEvent value, $Res Function(DetectionHistoryEvent) _then) = _$DetectionHistoryEventCopyWithImpl;
@useResult
$Res call({
 String? idUser
});




}
/// @nodoc
class _$DetectionHistoryEventCopyWithImpl<$Res>
    implements $DetectionHistoryEventCopyWith<$Res> {
  _$DetectionHistoryEventCopyWithImpl(this._self, this._then);

  final DetectionHistoryEvent _self;
  final $Res Function(DetectionHistoryEvent) _then;

/// Create a copy of DetectionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idUser = freezed,}) {
  return _then(_self.copyWith(
idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DetectionHistoryEvent].
extension DetectionHistoryEventPatterns on DetectionHistoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetch value)?  fetch,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetch value)  fetch,}){
final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetch value)?  fetch,}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? idUser)?  fetch,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that.idUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? idUser)  fetch,}) {final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that.idUser);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? idUser)?  fetch,}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that.idUser);case _:
  return null;

}
}

}

/// @nodoc


class _Fetch implements DetectionHistoryEvent {
  const _Fetch({this.idUser});
  

@override final  String? idUser;

/// Create a copy of DetectionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchCopyWith<_Fetch> get copyWith => __$FetchCopyWithImpl<_Fetch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch&&(identical(other.idUser, idUser) || other.idUser == idUser));
}


@override
int get hashCode => Object.hash(runtimeType,idUser);

@override
String toString() {
  return 'DetectionHistoryEvent.fetch(idUser: $idUser)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $DetectionHistoryEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) _then) = __$FetchCopyWithImpl;
@override @useResult
$Res call({
 String? idUser
});




}
/// @nodoc
class __$FetchCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(this._self, this._then);

  final _Fetch _self;
  final $Res Function(_Fetch) _then;

/// Create a copy of DetectionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idUser = freezed,}) {
  return _then(_Fetch(
idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$DetectionHistoryState {

 DetectionHistoryStatus get status; List<DetectionHistoryModel>? get data; String? get error;
/// Create a copy of DetectionHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetectionHistoryStateCopyWith<DetectionHistoryState> get copyWith => _$DetectionHistoryStateCopyWithImpl<DetectionHistoryState>(this as DetectionHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetectionHistoryState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data),error);

@override
String toString() {
  return 'DetectionHistoryState(status: $status, data: $data, error: $error)';
}


}

/// @nodoc
abstract mixin class $DetectionHistoryStateCopyWith<$Res>  {
  factory $DetectionHistoryStateCopyWith(DetectionHistoryState value, $Res Function(DetectionHistoryState) _then) = _$DetectionHistoryStateCopyWithImpl;
@useResult
$Res call({
 DetectionHistoryStatus status, List<DetectionHistoryModel>? data, String? error
});




}
/// @nodoc
class _$DetectionHistoryStateCopyWithImpl<$Res>
    implements $DetectionHistoryStateCopyWith<$Res> {
  _$DetectionHistoryStateCopyWithImpl(this._self, this._then);

  final DetectionHistoryState _self;
  final $Res Function(DetectionHistoryState) _then;

/// Create a copy of DetectionHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DetectionHistoryStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DetectionHistoryModel>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DetectionHistoryState].
extension DetectionHistoryStatePatterns on DetectionHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetectionHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetectionHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetectionHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _DetectionHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetectionHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _DetectionHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DetectionHistoryStatus status,  List<DetectionHistoryModel>? data,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetectionHistoryState() when $default != null:
return $default(_that.status,_that.data,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DetectionHistoryStatus status,  List<DetectionHistoryModel>? data,  String? error)  $default,) {final _that = this;
switch (_that) {
case _DetectionHistoryState():
return $default(_that.status,_that.data,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DetectionHistoryStatus status,  List<DetectionHistoryModel>? data,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _DetectionHistoryState() when $default != null:
return $default(_that.status,_that.data,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _DetectionHistoryState implements DetectionHistoryState {
  const _DetectionHistoryState({this.status = DetectionHistoryStatus.initial, final  List<DetectionHistoryModel>? data, this.error = ''}): _data = data;
  

@override@JsonKey() final  DetectionHistoryStatus status;
 final  List<DetectionHistoryModel>? _data;
@override List<DetectionHistoryModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? error;

/// Create a copy of DetectionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetectionHistoryStateCopyWith<_DetectionHistoryState> get copyWith => __$DetectionHistoryStateCopyWithImpl<_DetectionHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetectionHistoryState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data),error);

@override
String toString() {
  return 'DetectionHistoryState(status: $status, data: $data, error: $error)';
}


}

/// @nodoc
abstract mixin class _$DetectionHistoryStateCopyWith<$Res> implements $DetectionHistoryStateCopyWith<$Res> {
  factory _$DetectionHistoryStateCopyWith(_DetectionHistoryState value, $Res Function(_DetectionHistoryState) _then) = __$DetectionHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 DetectionHistoryStatus status, List<DetectionHistoryModel>? data, String? error
});




}
/// @nodoc
class __$DetectionHistoryStateCopyWithImpl<$Res>
    implements _$DetectionHistoryStateCopyWith<$Res> {
  __$DetectionHistoryStateCopyWithImpl(this._self, this._then);

  final _DetectionHistoryState _self;
  final $Res Function(_DetectionHistoryState) _then;

/// Create a copy of DetectionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? error = freezed,}) {
  return _then(_DetectionHistoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DetectionHistoryStatus,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DetectionHistoryModel>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
