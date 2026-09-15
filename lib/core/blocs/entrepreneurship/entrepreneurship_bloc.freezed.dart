// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entrepreneurship_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EntrepreneurshipEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntrepreneurshipEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EntrepreneurshipEvent()';
}


}

/// @nodoc
class $EntrepreneurshipEventCopyWith<$Res>  {
$EntrepreneurshipEventCopyWith(EntrepreneurshipEvent _, $Res Function(EntrepreneurshipEvent) __);
}


/// Adds pattern-matching-related methods to [EntrepreneurshipEvent].
extension EntrepreneurshipEventPatterns on EntrepreneurshipEvent {
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


class _Fetch implements EntrepreneurshipEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EntrepreneurshipEvent.fetch()';
}


}




/// @nodoc
mixin _$EntrepreneurshipState {

 EntrepreneurshipStateStatus get status; List<EntrepreneurshipModel>? get data; String get error;
/// Create a copy of EntrepreneurshipState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntrepreneurshipStateCopyWith<EntrepreneurshipState> get copyWith => _$EntrepreneurshipStateCopyWithImpl<EntrepreneurshipState>(this as EntrepreneurshipState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntrepreneurshipState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data),error);

@override
String toString() {
  return 'EntrepreneurshipState(status: $status, data: $data, error: $error)';
}


}

/// @nodoc
abstract mixin class $EntrepreneurshipStateCopyWith<$Res>  {
  factory $EntrepreneurshipStateCopyWith(EntrepreneurshipState value, $Res Function(EntrepreneurshipState) _then) = _$EntrepreneurshipStateCopyWithImpl;
@useResult
$Res call({
 EntrepreneurshipStateStatus status, List<EntrepreneurshipModel>? data, String error
});




}
/// @nodoc
class _$EntrepreneurshipStateCopyWithImpl<$Res>
    implements $EntrepreneurshipStateCopyWith<$Res> {
  _$EntrepreneurshipStateCopyWithImpl(this._self, this._then);

  final EntrepreneurshipState _self;
  final $Res Function(EntrepreneurshipState) _then;

/// Create a copy of EntrepreneurshipState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? error = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EntrepreneurshipStateStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<EntrepreneurshipModel>?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EntrepreneurshipState].
extension EntrepreneurshipStatePatterns on EntrepreneurshipState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntrepreneurshipState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntrepreneurshipState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntrepreneurshipState value)  $default,){
final _that = this;
switch (_that) {
case _EntrepreneurshipState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntrepreneurshipState value)?  $default,){
final _that = this;
switch (_that) {
case _EntrepreneurshipState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EntrepreneurshipStateStatus status,  List<EntrepreneurshipModel>? data,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntrepreneurshipState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EntrepreneurshipStateStatus status,  List<EntrepreneurshipModel>? data,  String error)  $default,) {final _that = this;
switch (_that) {
case _EntrepreneurshipState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EntrepreneurshipStateStatus status,  List<EntrepreneurshipModel>? data,  String error)?  $default,) {final _that = this;
switch (_that) {
case _EntrepreneurshipState() when $default != null:
return $default(_that.status,_that.data,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _EntrepreneurshipState implements EntrepreneurshipState {
  const _EntrepreneurshipState({this.status = EntrepreneurshipStateStatus.initial, final  List<EntrepreneurshipModel>? data, this.error = ''}): _data = data;
  

@override@JsonKey() final  EntrepreneurshipStateStatus status;
 final  List<EntrepreneurshipModel>? _data;
@override List<EntrepreneurshipModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String error;

/// Create a copy of EntrepreneurshipState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntrepreneurshipStateCopyWith<_EntrepreneurshipState> get copyWith => __$EntrepreneurshipStateCopyWithImpl<_EntrepreneurshipState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntrepreneurshipState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data),error);

@override
String toString() {
  return 'EntrepreneurshipState(status: $status, data: $data, error: $error)';
}


}

/// @nodoc
abstract mixin class _$EntrepreneurshipStateCopyWith<$Res> implements $EntrepreneurshipStateCopyWith<$Res> {
  factory _$EntrepreneurshipStateCopyWith(_EntrepreneurshipState value, $Res Function(_EntrepreneurshipState) _then) = __$EntrepreneurshipStateCopyWithImpl;
@override @useResult
$Res call({
 EntrepreneurshipStateStatus status, List<EntrepreneurshipModel>? data, String error
});




}
/// @nodoc
class __$EntrepreneurshipStateCopyWithImpl<$Res>
    implements _$EntrepreneurshipStateCopyWith<$Res> {
  __$EntrepreneurshipStateCopyWithImpl(this._self, this._then);

  final _EntrepreneurshipState _self;
  final $Res Function(_EntrepreneurshipState) _then;

/// Create a copy of EntrepreneurshipState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? error = null,}) {
  return _then(_EntrepreneurshipState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EntrepreneurshipStateStatus,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<EntrepreneurshipModel>?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
