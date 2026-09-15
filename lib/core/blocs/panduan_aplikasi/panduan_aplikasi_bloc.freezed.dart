// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'panduan_aplikasi_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PanduanAplikasiEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PanduanAplikasiEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PanduanAplikasiEvent()';
}


}

/// @nodoc
class $PanduanAplikasiEventCopyWith<$Res>  {
$PanduanAplikasiEventCopyWith(PanduanAplikasiEvent _, $Res Function(PanduanAplikasiEvent) __);
}


/// Adds pattern-matching-related methods to [PanduanAplikasiEvent].
extension PanduanAplikasiEventPatterns on PanduanAplikasiEvent {
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


class _Fetch implements PanduanAplikasiEvent {
  const _Fetch({this.page = 1, this.perPage = 9});
  

@JsonKey() final  int page;
@JsonKey() final  int perPage;

/// Create a copy of PanduanAplikasiEvent
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
  return 'PanduanAplikasiEvent.fetch(page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $PanduanAplikasiEventCopyWith<$Res> {
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

/// Create a copy of PanduanAplikasiEvent
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


class _FetchDetail implements PanduanAplikasiEvent {
  const _FetchDetail(this.id);
  

 final  int id;

/// Create a copy of PanduanAplikasiEvent
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
  return 'PanduanAplikasiEvent.fetchDetail(id: $id)';
}


}

/// @nodoc
abstract mixin class _$FetchDetailCopyWith<$Res> implements $PanduanAplikasiEventCopyWith<$Res> {
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

/// Create a copy of PanduanAplikasiEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_FetchDetail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$PanduanAplikasiState {

 PanduanAplikasiStateStatus get listStatus; PanduanAplikasiStateStatus get detailStatus; List<PanduanAplikasiModel>? get data; PanduanAplikasiModel? get detail; PaginationModel? get pagination; String get error;
/// Create a copy of PanduanAplikasiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PanduanAplikasiStateCopyWith<PanduanAplikasiState> get copyWith => _$PanduanAplikasiStateCopyWithImpl<PanduanAplikasiState>(this as PanduanAplikasiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PanduanAplikasiState&&(identical(other.listStatus, listStatus) || other.listStatus == listStatus)&&(identical(other.detailStatus, detailStatus) || other.detailStatus == detailStatus)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,listStatus,detailStatus,const DeepCollectionEquality().hash(data),detail,pagination,error);

@override
String toString() {
  return 'PanduanAplikasiState(listStatus: $listStatus, detailStatus: $detailStatus, data: $data, detail: $detail, pagination: $pagination, error: $error)';
}


}

/// @nodoc
abstract mixin class $PanduanAplikasiStateCopyWith<$Res>  {
  factory $PanduanAplikasiStateCopyWith(PanduanAplikasiState value, $Res Function(PanduanAplikasiState) _then) = _$PanduanAplikasiStateCopyWithImpl;
@useResult
$Res call({
 PanduanAplikasiStateStatus listStatus, PanduanAplikasiStateStatus detailStatus, List<PanduanAplikasiModel>? data, PanduanAplikasiModel? detail, PaginationModel? pagination, String error
});


$PanduanAplikasiModelCopyWith<$Res>? get detail;$PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$PanduanAplikasiStateCopyWithImpl<$Res>
    implements $PanduanAplikasiStateCopyWith<$Res> {
  _$PanduanAplikasiStateCopyWithImpl(this._self, this._then);

  final PanduanAplikasiState _self;
  final $Res Function(PanduanAplikasiState) _then;

/// Create a copy of PanduanAplikasiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listStatus = null,Object? detailStatus = null,Object? data = freezed,Object? detail = freezed,Object? pagination = freezed,Object? error = null,}) {
  return _then(_self.copyWith(
listStatus: null == listStatus ? _self.listStatus : listStatus // ignore: cast_nullable_to_non_nullable
as PanduanAplikasiStateStatus,detailStatus: null == detailStatus ? _self.detailStatus : detailStatus // ignore: cast_nullable_to_non_nullable
as PanduanAplikasiStateStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PanduanAplikasiModel>?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as PanduanAplikasiModel?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of PanduanAplikasiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PanduanAplikasiModelCopyWith<$Res>? get detail {
    if (_self.detail == null) {
    return null;
  }

  return $PanduanAplikasiModelCopyWith<$Res>(_self.detail!, (value) {
    return _then(_self.copyWith(detail: value));
  });
}/// Create a copy of PanduanAplikasiState
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


/// Adds pattern-matching-related methods to [PanduanAplikasiState].
extension PanduanAplikasiStatePatterns on PanduanAplikasiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PanduanAplikasiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PanduanAplikasiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PanduanAplikasiState value)  $default,){
final _that = this;
switch (_that) {
case _PanduanAplikasiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PanduanAplikasiState value)?  $default,){
final _that = this;
switch (_that) {
case _PanduanAplikasiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PanduanAplikasiStateStatus listStatus,  PanduanAplikasiStateStatus detailStatus,  List<PanduanAplikasiModel>? data,  PanduanAplikasiModel? detail,  PaginationModel? pagination,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PanduanAplikasiState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PanduanAplikasiStateStatus listStatus,  PanduanAplikasiStateStatus detailStatus,  List<PanduanAplikasiModel>? data,  PanduanAplikasiModel? detail,  PaginationModel? pagination,  String error)  $default,) {final _that = this;
switch (_that) {
case _PanduanAplikasiState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PanduanAplikasiStateStatus listStatus,  PanduanAplikasiStateStatus detailStatus,  List<PanduanAplikasiModel>? data,  PanduanAplikasiModel? detail,  PaginationModel? pagination,  String error)?  $default,) {final _that = this;
switch (_that) {
case _PanduanAplikasiState() when $default != null:
return $default(_that.listStatus,_that.detailStatus,_that.data,_that.detail,_that.pagination,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _PanduanAplikasiState implements PanduanAplikasiState {
  const _PanduanAplikasiState({this.listStatus = PanduanAplikasiStateStatus.initial, this.detailStatus = PanduanAplikasiStateStatus.initial, final  List<PanduanAplikasiModel>? data, this.detail, this.pagination, this.error = ''}): _data = data;
  

@override@JsonKey() final  PanduanAplikasiStateStatus listStatus;
@override@JsonKey() final  PanduanAplikasiStateStatus detailStatus;
 final  List<PanduanAplikasiModel>? _data;
@override List<PanduanAplikasiModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  PanduanAplikasiModel? detail;
@override final  PaginationModel? pagination;
@override@JsonKey() final  String error;

/// Create a copy of PanduanAplikasiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PanduanAplikasiStateCopyWith<_PanduanAplikasiState> get copyWith => __$PanduanAplikasiStateCopyWithImpl<_PanduanAplikasiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PanduanAplikasiState&&(identical(other.listStatus, listStatus) || other.listStatus == listStatus)&&(identical(other.detailStatus, detailStatus) || other.detailStatus == detailStatus)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,listStatus,detailStatus,const DeepCollectionEquality().hash(_data),detail,pagination,error);

@override
String toString() {
  return 'PanduanAplikasiState(listStatus: $listStatus, detailStatus: $detailStatus, data: $data, detail: $detail, pagination: $pagination, error: $error)';
}


}

/// @nodoc
abstract mixin class _$PanduanAplikasiStateCopyWith<$Res> implements $PanduanAplikasiStateCopyWith<$Res> {
  factory _$PanduanAplikasiStateCopyWith(_PanduanAplikasiState value, $Res Function(_PanduanAplikasiState) _then) = __$PanduanAplikasiStateCopyWithImpl;
@override @useResult
$Res call({
 PanduanAplikasiStateStatus listStatus, PanduanAplikasiStateStatus detailStatus, List<PanduanAplikasiModel>? data, PanduanAplikasiModel? detail, PaginationModel? pagination, String error
});


@override $PanduanAplikasiModelCopyWith<$Res>? get detail;@override $PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$PanduanAplikasiStateCopyWithImpl<$Res>
    implements _$PanduanAplikasiStateCopyWith<$Res> {
  __$PanduanAplikasiStateCopyWithImpl(this._self, this._then);

  final _PanduanAplikasiState _self;
  final $Res Function(_PanduanAplikasiState) _then;

/// Create a copy of PanduanAplikasiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listStatus = null,Object? detailStatus = null,Object? data = freezed,Object? detail = freezed,Object? pagination = freezed,Object? error = null,}) {
  return _then(_PanduanAplikasiState(
listStatus: null == listStatus ? _self.listStatus : listStatus // ignore: cast_nullable_to_non_nullable
as PanduanAplikasiStateStatus,detailStatus: null == detailStatus ? _self.detailStatus : detailStatus // ignore: cast_nullable_to_non_nullable
as PanduanAplikasiStateStatus,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PanduanAplikasiModel>?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as PanduanAplikasiModel?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PanduanAplikasiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PanduanAplikasiModelCopyWith<$Res>? get detail {
    if (_self.detail == null) {
    return null;
  }

  return $PanduanAplikasiModelCopyWith<$Res>(_self.detail!, (value) {
    return _then(_self.copyWith(detail: value));
  });
}/// Create a copy of PanduanAplikasiState
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
