// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rss_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RssNewsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RssNewsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RssNewsEvent()';
}


}

/// @nodoc
class $RssNewsEventCopyWith<$Res>  {
$RssNewsEventCopyWith(RssNewsEvent _, $Res Function(RssNewsEvent) __);
}


/// Adds pattern-matching-related methods to [RssNewsEvent].
extension RssNewsEventPatterns on RssNewsEvent {
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


class _Fetch implements RssNewsEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RssNewsEvent.fetch()';
}


}




/// @nodoc
mixin _$RssNewsState {

 RssNewsStateStatus get status; List<RssNewsModel>? get data; String? get error;
/// Create a copy of RssNewsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RssNewsStateCopyWith<RssNewsState> get copyWith => _$RssNewsStateCopyWithImpl<RssNewsState>(this as RssNewsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RssNewsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data),error);

@override
String toString() {
  return 'RssNewsState(status: $status, data: $data, error: $error)';
}


}

/// @nodoc
abstract mixin class $RssNewsStateCopyWith<$Res>  {
  factory $RssNewsStateCopyWith(RssNewsState value, $Res Function(RssNewsState) _then) = _$RssNewsStateCopyWithImpl;
@useResult
$Res call({
 RssNewsStateStatus status, List<RssNewsModel>? data, String? error
});




}
/// @nodoc
class _$RssNewsStateCopyWithImpl<$Res>
    implements $RssNewsStateCopyWith<$Res> {
  _$RssNewsStateCopyWithImpl(this._self, this._then);

  final RssNewsState _self;
  final $Res Function(RssNewsState) _then;

/// Create a copy of RssNewsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RssNewsStateStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<RssNewsModel>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RssNewsState].
extension RssNewsStatePatterns on RssNewsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RssNewsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RssNewsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RssNewsState value)  $default,){
final _that = this;
switch (_that) {
case _RssNewsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RssNewsState value)?  $default,){
final _that = this;
switch (_that) {
case _RssNewsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RssNewsStateStatus status,  List<RssNewsModel>? data,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RssNewsState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RssNewsStateStatus status,  List<RssNewsModel>? data,  String? error)  $default,) {final _that = this;
switch (_that) {
case _RssNewsState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RssNewsStateStatus status,  List<RssNewsModel>? data,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _RssNewsState() when $default != null:
return $default(_that.status,_that.data,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _RssNewsState implements RssNewsState {
  const _RssNewsState({this.status = RssNewsStateStatus.initial, final  List<RssNewsModel>? data, this.error = ''}): _data = data;
  

@override@JsonKey() final  RssNewsStateStatus status;
 final  List<RssNewsModel>? _data;
@override List<RssNewsModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? error;

/// Create a copy of RssNewsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RssNewsStateCopyWith<_RssNewsState> get copyWith => __$RssNewsStateCopyWithImpl<_RssNewsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RssNewsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data),error);

@override
String toString() {
  return 'RssNewsState(status: $status, data: $data, error: $error)';
}


}

/// @nodoc
abstract mixin class _$RssNewsStateCopyWith<$Res> implements $RssNewsStateCopyWith<$Res> {
  factory _$RssNewsStateCopyWith(_RssNewsState value, $Res Function(_RssNewsState) _then) = __$RssNewsStateCopyWithImpl;
@override @useResult
$Res call({
 RssNewsStateStatus status, List<RssNewsModel>? data, String? error
});




}
/// @nodoc
class __$RssNewsStateCopyWithImpl<$Res>
    implements _$RssNewsStateCopyWith<$Res> {
  __$RssNewsStateCopyWithImpl(this._self, this._then);

  final _RssNewsState _self;
  final $Res Function(_RssNewsState) _then;

/// Create a copy of RssNewsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? error = freezed,}) {
  return _then(_RssNewsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RssNewsStateStatus,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<RssNewsModel>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
