// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referensi_buku_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReferensiBukuEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferensiBukuEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReferensiBukuEvent()';
}


}

/// @nodoc
class $ReferensiBukuEventCopyWith<$Res>  {
$ReferensiBukuEventCopyWith(ReferensiBukuEvent _, $Res Function(ReferensiBukuEvent) __);
}


/// Adds pattern-matching-related methods to [ReferensiBukuEvent].
extension ReferensiBukuEventPatterns on ReferensiBukuEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetch value)?  fetch,TResult Function( _FetchDetail value)?  fetchDetail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _FetchDetail() when fetchDetail != null:
return fetchDetail(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetch value)  fetch,required TResult Function( _FetchDetail value)  fetchDetail,}){
final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that);case _FetchDetail():
return fetchDetail(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetch value)?  fetch,TResult? Function( _FetchDetail value)?  fetchDetail,}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _FetchDetail() when fetchDetail != null:
return fetchDetail(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page,  int perPage)?  fetch,TResult Function( int id)?  fetchDetail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that.page,_that.perPage);case _FetchDetail() when fetchDetail != null:
return fetchDetail(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page,  int perPage)  fetch,required TResult Function( int id)  fetchDetail,}) {final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that.page,_that.perPage);case _FetchDetail():
return fetchDetail(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page,  int perPage)?  fetch,TResult? Function( int id)?  fetchDetail,}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that.page,_that.perPage);case _FetchDetail() when fetchDetail != null:
return fetchDetail(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Fetch implements ReferensiBukuEvent {
  const _Fetch({this.page = 1, this.perPage = 9});
  

@JsonKey() final  int page;
@JsonKey() final  int perPage;

/// Create a copy of ReferensiBukuEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchCopyWith<_Fetch> get copyWith => __$FetchCopyWithImpl<_Fetch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}


@override
int get hashCode => Object.hash(runtimeType,page,perPage);

@override
String toString() {
  return 'ReferensiBukuEvent.fetch(page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $ReferensiBukuEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) _then) = __$FetchCopyWithImpl;
@useResult
$Res call({
 int page, int perPage
});




}
/// @nodoc
class __$FetchCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(this._self, this._then);

  final _Fetch _self;
  final $Res Function(_Fetch) _then;

/// Create a copy of ReferensiBukuEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? perPage = null,}) {
  return _then(_Fetch(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _FetchDetail implements ReferensiBukuEvent {
  const _FetchDetail(this.id);
  

 final  int id;

/// Create a copy of ReferensiBukuEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchDetailCopyWith<_FetchDetail> get copyWith => __$FetchDetailCopyWithImpl<_FetchDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchDetail&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ReferensiBukuEvent.fetchDetail(id: $id)';
}


}

/// @nodoc
abstract mixin class _$FetchDetailCopyWith<$Res> implements $ReferensiBukuEventCopyWith<$Res> {
  factory _$FetchDetailCopyWith(_FetchDetail value, $Res Function(_FetchDetail) _then) = __$FetchDetailCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$FetchDetailCopyWithImpl<$Res>
    implements _$FetchDetailCopyWith<$Res> {
  __$FetchDetailCopyWithImpl(this._self, this._then);

  final _FetchDetail _self;
  final $Res Function(_FetchDetail) _then;

/// Create a copy of ReferensiBukuEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_FetchDetail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ReferensiBukuState {

 ReferensiBukuStateStatus get listStatus; ReferensiBukuStateStatus get detailStatus; List<ReferensiBukuModel>? get data; ReferensiBukuModel? get detail; PaginationModel? get pagination; String get error;
/// Create a copy of ReferensiBukuState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferensiBukuStateCopyWith<ReferensiBukuState> get copyWith => _$ReferensiBukuStateCopyWithImpl<ReferensiBukuState>(this as ReferensiBukuState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferensiBukuState&&(identical(other.listStatus, listStatus) || other.listStatus == listStatus)&&(identical(other.detailStatus, detailStatus) || other.detailStatus == detailStatus)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,listStatus,detailStatus,const DeepCollectionEquality().hash(data),detail,pagination,error);

@override
String toString() {
  return 'ReferensiBukuState(listStatus: $listStatus, detailStatus: $detailStatus, data: $data, detail: $detail, pagination: $pagination, error: $error)';
}


}

/// @nodoc
abstract mixin class $ReferensiBukuStateCopyWith<$Res>  {
  factory $ReferensiBukuStateCopyWith(ReferensiBukuState value, $Res Function(ReferensiBukuState) _then) = _$ReferensiBukuStateCopyWithImpl;
@useResult
$Res call({
 ReferensiBukuStateStatus listStatus, ReferensiBukuStateStatus detailStatus, List<ReferensiBukuModel>? data, ReferensiBukuModel? detail, PaginationModel? pagination, String error
});


$ReferensiBukuModelCopyWith<$Res>? get detail;$PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$ReferensiBukuStateCopyWithImpl<$Res>
    implements $ReferensiBukuStateCopyWith<$Res> {
  _$ReferensiBukuStateCopyWithImpl(this._self, this._then);

  final ReferensiBukuState _self;
  final $Res Function(ReferensiBukuState) _then;

/// Create a copy of ReferensiBukuState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listStatus = null,Object? detailStatus = null,Object? data = freezed,Object? detail = freezed,Object? pagination = freezed,Object? error = null,}) {
  return _then(_self.copyWith(
listStatus: null == listStatus ? _self.listStatus : listStatus // ignore: cast_nullable_to_non_nullable
as ReferensiBukuStateStatus,detailStatus: null == detailStatus ? _self.detailStatus : detailStatus // ignore: cast_nullable_to_non_nullable
as ReferensiBukuStateStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ReferensiBukuModel>?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as ReferensiBukuModel?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ReferensiBukuState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferensiBukuModelCopyWith<$Res>? get detail {
    if (_self.detail == null) {
    return null;
  }

  return $ReferensiBukuModelCopyWith<$Res>(_self.detail!, (value) {
    return _then(_self.copyWith(detail: value));
  });
}/// Create a copy of ReferensiBukuState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReferensiBukuState].
extension ReferensiBukuStatePatterns on ReferensiBukuState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferensiBukuState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferensiBukuState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferensiBukuState value)  $default,){
final _that = this;
switch (_that) {
case _ReferensiBukuState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferensiBukuState value)?  $default,){
final _that = this;
switch (_that) {
case _ReferensiBukuState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReferensiBukuStateStatus listStatus,  ReferensiBukuStateStatus detailStatus,  List<ReferensiBukuModel>? data,  ReferensiBukuModel? detail,  PaginationModel? pagination,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferensiBukuState() when $default != null:
return $default(_that.listStatus,_that.detailStatus,_that.data,_that.detail,_that.pagination,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReferensiBukuStateStatus listStatus,  ReferensiBukuStateStatus detailStatus,  List<ReferensiBukuModel>? data,  ReferensiBukuModel? detail,  PaginationModel? pagination,  String error)  $default,) {final _that = this;
switch (_that) {
case _ReferensiBukuState():
return $default(_that.listStatus,_that.detailStatus,_that.data,_that.detail,_that.pagination,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReferensiBukuStateStatus listStatus,  ReferensiBukuStateStatus detailStatus,  List<ReferensiBukuModel>? data,  ReferensiBukuModel? detail,  PaginationModel? pagination,  String error)?  $default,) {final _that = this;
switch (_that) {
case _ReferensiBukuState() when $default != null:
return $default(_that.listStatus,_that.detailStatus,_that.data,_that.detail,_that.pagination,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ReferensiBukuState implements ReferensiBukuState {
  const _ReferensiBukuState({this.listStatus = ReferensiBukuStateStatus.initial, this.detailStatus = ReferensiBukuStateStatus.initial, final  List<ReferensiBukuModel>? data, this.detail, this.pagination, this.error = ''}): _data = data;
  

@override@JsonKey() final  ReferensiBukuStateStatus listStatus;
@override@JsonKey() final  ReferensiBukuStateStatus detailStatus;
 final  List<ReferensiBukuModel>? _data;
@override List<ReferensiBukuModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ReferensiBukuModel? detail;
@override final  PaginationModel? pagination;
@override@JsonKey() final  String error;

/// Create a copy of ReferensiBukuState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferensiBukuStateCopyWith<_ReferensiBukuState> get copyWith => __$ReferensiBukuStateCopyWithImpl<_ReferensiBukuState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferensiBukuState&&(identical(other.listStatus, listStatus) || other.listStatus == listStatus)&&(identical(other.detailStatus, detailStatus) || other.detailStatus == detailStatus)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,listStatus,detailStatus,const DeepCollectionEquality().hash(_data),detail,pagination,error);

@override
String toString() {
  return 'ReferensiBukuState(listStatus: $listStatus, detailStatus: $detailStatus, data: $data, detail: $detail, pagination: $pagination, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ReferensiBukuStateCopyWith<$Res> implements $ReferensiBukuStateCopyWith<$Res> {
  factory _$ReferensiBukuStateCopyWith(_ReferensiBukuState value, $Res Function(_ReferensiBukuState) _then) = __$ReferensiBukuStateCopyWithImpl;
@override @useResult
$Res call({
 ReferensiBukuStateStatus listStatus, ReferensiBukuStateStatus detailStatus, List<ReferensiBukuModel>? data, ReferensiBukuModel? detail, PaginationModel? pagination, String error
});


@override $ReferensiBukuModelCopyWith<$Res>? get detail;@override $PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$ReferensiBukuStateCopyWithImpl<$Res>
    implements _$ReferensiBukuStateCopyWith<$Res> {
  __$ReferensiBukuStateCopyWithImpl(this._self, this._then);

  final _ReferensiBukuState _self;
  final $Res Function(_ReferensiBukuState) _then;

/// Create a copy of ReferensiBukuState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listStatus = null,Object? detailStatus = null,Object? data = freezed,Object? detail = freezed,Object? pagination = freezed,Object? error = null,}) {
  return _then(_ReferensiBukuState(
listStatus: null == listStatus ? _self.listStatus : listStatus // ignore: cast_nullable_to_non_nullable
as ReferensiBukuStateStatus,detailStatus: null == detailStatus ? _self.detailStatus : detailStatus // ignore: cast_nullable_to_non_nullable
as ReferensiBukuStateStatus,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ReferensiBukuModel>?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as ReferensiBukuModel?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ReferensiBukuState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferensiBukuModelCopyWith<$Res>? get detail {
    if (_self.detail == null) {
    return null;
  }

  return $ReferensiBukuModelCopyWith<$Res>(_self.detail!, (value) {
    return _then(_self.copyWith(detail: value));
  });
}/// Create a copy of ReferensiBukuState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
