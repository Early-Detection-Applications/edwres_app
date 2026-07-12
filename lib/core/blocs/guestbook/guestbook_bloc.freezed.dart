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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetch,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetch,}) {final _that = this;
switch (_that) {
case _Fetch():
return fetch();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetch,}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch();case _:
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
mixin _$GuestbookState {

 GuestbookStateStatus get status; List<GuestbookModel>? get data; String? get error;
/// Create a copy of GuestbookState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuestbookStateCopyWith<GuestbookState> get copyWith => _$GuestbookStateCopyWithImpl<GuestbookState>(this as GuestbookState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuestbookState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data),error);

@override
String toString() {
  return 'GuestbookState(status: $status, data: $data, error: $error)';
}


}

/// @nodoc
abstract mixin class $GuestbookStateCopyWith<$Res>  {
  factory $GuestbookStateCopyWith(GuestbookState value, $Res Function(GuestbookState) _then) = _$GuestbookStateCopyWithImpl;
@useResult
$Res call({
 GuestbookStateStatus status, List<GuestbookModel>? data, String? error
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
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GuestbookStateStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<GuestbookModel>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GuestbookStateStatus status,  List<GuestbookModel>? data,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuestbookState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GuestbookStateStatus status,  List<GuestbookModel>? data,  String? error)  $default,) {final _that = this;
switch (_that) {
case _GuestbookState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GuestbookStateStatus status,  List<GuestbookModel>? data,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _GuestbookState() when $default != null:
return $default(_that.status,_that.data,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _GuestbookState implements GuestbookState {
  const _GuestbookState({this.status = GuestbookStateStatus.initial, final  List<GuestbookModel>? data, this.error = ''}): _data = data;
  

@override@JsonKey() final  GuestbookStateStatus status;
 final  List<GuestbookModel>? _data;
@override List<GuestbookModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? error;

/// Create a copy of GuestbookState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuestbookStateCopyWith<_GuestbookState> get copyWith => __$GuestbookStateCopyWithImpl<_GuestbookState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuestbookState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data),error);

@override
String toString() {
  return 'GuestbookState(status: $status, data: $data, error: $error)';
}


}

/// @nodoc
abstract mixin class _$GuestbookStateCopyWith<$Res> implements $GuestbookStateCopyWith<$Res> {
  factory _$GuestbookStateCopyWith(_GuestbookState value, $Res Function(_GuestbookState) _then) = __$GuestbookStateCopyWithImpl;
@override @useResult
$Res call({
 GuestbookStateStatus status, List<GuestbookModel>? data, String? error
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
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? error = freezed,}) {
  return _then(_GuestbookState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GuestbookStateStatus,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<GuestbookModel>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
