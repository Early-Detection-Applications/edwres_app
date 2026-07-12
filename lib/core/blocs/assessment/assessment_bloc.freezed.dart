// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssessmentEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AssessmentEvent()';
}


}

/// @nodoc
class $AssessmentEventCopyWith<$Res>  {
$AssessmentEventCopyWith(AssessmentEvent _, $Res Function(AssessmentEvent) __);
}


/// Adds pattern-matching-related methods to [AssessmentEvent].
extension AssessmentEventPatterns on AssessmentEvent {
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


class _Fetch implements AssessmentEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AssessmentEvent.fetch()';
}


}




/// @nodoc
mixin _$AssessmentState {

 AssessmentStatus get status; List<AssessmentModel> get data; String? get error;
/// Create a copy of AssessmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentStateCopyWith<AssessmentState> get copyWith => _$AssessmentStateCopyWithImpl<AssessmentState>(this as AssessmentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data),error);

@override
String toString() {
  return 'AssessmentState(status: $status, data: $data, error: $error)';
}


}

/// @nodoc
abstract mixin class $AssessmentStateCopyWith<$Res>  {
  factory $AssessmentStateCopyWith(AssessmentState value, $Res Function(AssessmentState) _then) = _$AssessmentStateCopyWithImpl;
@useResult
$Res call({
 AssessmentStatus status, List<AssessmentModel> data, String? error
});




}
/// @nodoc
class _$AssessmentStateCopyWithImpl<$Res>
    implements $AssessmentStateCopyWith<$Res> {
  _$AssessmentStateCopyWithImpl(this._self, this._then);

  final AssessmentState _self;
  final $Res Function(AssessmentState) _then;

/// Create a copy of AssessmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AssessmentStatus,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AssessmentModel>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssessmentState].
extension AssessmentStatePatterns on AssessmentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssessmentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssessmentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssessmentState value)  $default,){
final _that = this;
switch (_that) {
case _AssessmentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssessmentState value)?  $default,){
final _that = this;
switch (_that) {
case _AssessmentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AssessmentStatus status,  List<AssessmentModel> data,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssessmentState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AssessmentStatus status,  List<AssessmentModel> data,  String? error)  $default,) {final _that = this;
switch (_that) {
case _AssessmentState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AssessmentStatus status,  List<AssessmentModel> data,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _AssessmentState() when $default != null:
return $default(_that.status,_that.data,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _AssessmentState implements AssessmentState {
  const _AssessmentState({this.status = AssessmentStatus.initial, final  List<AssessmentModel> data = const [], this.error = ''}): _data = data;
  

@override@JsonKey() final  AssessmentStatus status;
 final  List<AssessmentModel> _data;
@override@JsonKey() List<AssessmentModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  String? error;

/// Create a copy of AssessmentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessmentStateCopyWith<_AssessmentState> get copyWith => __$AssessmentStateCopyWithImpl<_AssessmentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessmentState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data),error);

@override
String toString() {
  return 'AssessmentState(status: $status, data: $data, error: $error)';
}


}

/// @nodoc
abstract mixin class _$AssessmentStateCopyWith<$Res> implements $AssessmentStateCopyWith<$Res> {
  factory _$AssessmentStateCopyWith(_AssessmentState value, $Res Function(_AssessmentState) _then) = __$AssessmentStateCopyWithImpl;
@override @useResult
$Res call({
 AssessmentStatus status, List<AssessmentModel> data, String? error
});




}
/// @nodoc
class __$AssessmentStateCopyWithImpl<$Res>
    implements _$AssessmentStateCopyWith<$Res> {
  __$AssessmentStateCopyWithImpl(this._self, this._then);

  final _AssessmentState _self;
  final $Res Function(_AssessmentState) _then;

/// Create a copy of AssessmentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,Object? error = freezed,}) {
  return _then(_AssessmentState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AssessmentStatus,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AssessmentModel>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
