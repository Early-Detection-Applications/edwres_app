// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DataModel<T> {

@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'data') List<T>? get data;@JsonKey(name: 'first_page_url') String? get firstPageUrl;@JsonKey(name: 'from') int? get from;@JsonKey(name: 'last_page') int? get lastPage;@JsonKey(name: 'last_page_url') String? get lastPageUrl;@JsonKey(name: 'next_page_url') String? get nextPageUrl;@JsonKey(name: 'path') String? get path;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'prev_page_url') String? get prevPageUrl;@JsonKey(name: 'to') int? get to;@JsonKey(name: 'total') int? get total;@JsonKey(name: 'links') List<LinksModel>? get links;
/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataModelCopyWith<T, DataModel<T>> get copyWith => _$DataModelCopyWithImpl<T, DataModel<T>>(this as DataModel<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataModel<T>&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.firstPageUrl, firstPageUrl) || other.firstPageUrl == firstPageUrl)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.lastPageUrl, lastPageUrl) || other.lastPageUrl == lastPageUrl)&&(identical(other.nextPageUrl, nextPageUrl) || other.nextPageUrl == nextPageUrl)&&(identical(other.path, path) || other.path == path)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.prevPageUrl, prevPageUrl) || other.prevPageUrl == prevPageUrl)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.links, links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,const DeepCollectionEquality().hash(data),firstPageUrl,from,lastPage,lastPageUrl,nextPageUrl,path,perPage,prevPageUrl,to,total,const DeepCollectionEquality().hash(links));

@override
String toString() {
  return 'DataModel<$T>(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total, links: $links)';
}


}

/// @nodoc
abstract mixin class $DataModelCopyWith<T,$Res>  {
  factory $DataModelCopyWith(DataModel<T> value, $Res Function(DataModel<T>) _then) = _$DataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'data') List<T>? data,@JsonKey(name: 'first_page_url') String? firstPageUrl,@JsonKey(name: 'from') int? from,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'last_page_url') String? lastPageUrl,@JsonKey(name: 'next_page_url') String? nextPageUrl,@JsonKey(name: 'path') String? path,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'prev_page_url') String? prevPageUrl,@JsonKey(name: 'to') int? to,@JsonKey(name: 'total') int? total,@JsonKey(name: 'links') List<LinksModel>? links
});




}
/// @nodoc
class _$DataModelCopyWithImpl<T,$Res>
    implements $DataModelCopyWith<T, $Res> {
  _$DataModelCopyWithImpl(this._self, this._then);

  final DataModel<T> _self;
  final $Res Function(DataModel<T>) _then;

/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? data = freezed,Object? firstPageUrl = freezed,Object? from = freezed,Object? lastPage = freezed,Object? lastPageUrl = freezed,Object? nextPageUrl = freezed,Object? path = freezed,Object? perPage = freezed,Object? prevPageUrl = freezed,Object? to = freezed,Object? total = freezed,Object? links = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,firstPageUrl: freezed == firstPageUrl ? _self.firstPageUrl : firstPageUrl // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,lastPageUrl: freezed == lastPageUrl ? _self.lastPageUrl : lastPageUrl // ignore: cast_nullable_to_non_nullable
as String?,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<LinksModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DataModel].
extension DataModelPatterns<T> on DataModel<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DataModel<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DataModel<T> value)  $default,){
final _that = this;
switch (_that) {
case _DataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DataModel<T> value)?  $default,){
final _that = this;
switch (_that) {
case _DataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'data')  List<T>? data, @JsonKey(name: 'first_page_url')  String? firstPageUrl, @JsonKey(name: 'from')  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'last_page_url')  String? lastPageUrl, @JsonKey(name: 'next_page_url')  String? nextPageUrl, @JsonKey(name: 'path')  String? path, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'prev_page_url')  String? prevPageUrl, @JsonKey(name: 'to')  int? to, @JsonKey(name: 'total')  int? total, @JsonKey(name: 'links')  List<LinksModel>? links)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataModel() when $default != null:
return $default(_that.currentPage,_that.data,_that.firstPageUrl,_that.from,_that.lastPage,_that.lastPageUrl,_that.nextPageUrl,_that.path,_that.perPage,_that.prevPageUrl,_that.to,_that.total,_that.links);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'data')  List<T>? data, @JsonKey(name: 'first_page_url')  String? firstPageUrl, @JsonKey(name: 'from')  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'last_page_url')  String? lastPageUrl, @JsonKey(name: 'next_page_url')  String? nextPageUrl, @JsonKey(name: 'path')  String? path, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'prev_page_url')  String? prevPageUrl, @JsonKey(name: 'to')  int? to, @JsonKey(name: 'total')  int? total, @JsonKey(name: 'links')  List<LinksModel>? links)  $default,) {final _that = this;
switch (_that) {
case _DataModel():
return $default(_that.currentPage,_that.data,_that.firstPageUrl,_that.from,_that.lastPage,_that.lastPageUrl,_that.nextPageUrl,_that.path,_that.perPage,_that.prevPageUrl,_that.to,_that.total,_that.links);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'data')  List<T>? data, @JsonKey(name: 'first_page_url')  String? firstPageUrl, @JsonKey(name: 'from')  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'last_page_url')  String? lastPageUrl, @JsonKey(name: 'next_page_url')  String? nextPageUrl, @JsonKey(name: 'path')  String? path, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'prev_page_url')  String? prevPageUrl, @JsonKey(name: 'to')  int? to, @JsonKey(name: 'total')  int? total, @JsonKey(name: 'links')  List<LinksModel>? links)?  $default,) {final _that = this;
switch (_that) {
case _DataModel() when $default != null:
return $default(_that.currentPage,_that.data,_that.firstPageUrl,_that.from,_that.lastPage,_that.lastPageUrl,_that.nextPageUrl,_that.path,_that.perPage,_that.prevPageUrl,_that.to,_that.total,_that.links);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false,genericArgumentFactories: true)

class _DataModel<T> implements DataModel<T> {
  const _DataModel({@JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'data') final  List<T>? data, @JsonKey(name: 'first_page_url') this.firstPageUrl, @JsonKey(name: 'from') this.from, @JsonKey(name: 'last_page') this.lastPage, @JsonKey(name: 'last_page_url') this.lastPageUrl, @JsonKey(name: 'next_page_url') this.nextPageUrl, @JsonKey(name: 'path') this.path, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'prev_page_url') this.prevPageUrl, @JsonKey(name: 'to') this.to, @JsonKey(name: 'total') this.total, @JsonKey(name: 'links') final  List<LinksModel>? links}): _data = data,_links = links;
  factory _DataModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$DataModelFromJson(json,fromJsonT);

@override@JsonKey(name: 'current_page') final  int? currentPage;
 final  List<T>? _data;
@override@JsonKey(name: 'data') List<T>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'first_page_url') final  String? firstPageUrl;
@override@JsonKey(name: 'from') final  int? from;
@override@JsonKey(name: 'last_page') final  int? lastPage;
@override@JsonKey(name: 'last_page_url') final  String? lastPageUrl;
@override@JsonKey(name: 'next_page_url') final  String? nextPageUrl;
@override@JsonKey(name: 'path') final  String? path;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'prev_page_url') final  String? prevPageUrl;
@override@JsonKey(name: 'to') final  int? to;
@override@JsonKey(name: 'total') final  int? total;
 final  List<LinksModel>? _links;
@override@JsonKey(name: 'links') List<LinksModel>? get links {
  final value = _links;
  if (value == null) return null;
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataModelCopyWith<T, _DataModel<T>> get copyWith => __$DataModelCopyWithImpl<T, _DataModel<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataModel<T>&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.firstPageUrl, firstPageUrl) || other.firstPageUrl == firstPageUrl)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.lastPageUrl, lastPageUrl) || other.lastPageUrl == lastPageUrl)&&(identical(other.nextPageUrl, nextPageUrl) || other.nextPageUrl == nextPageUrl)&&(identical(other.path, path) || other.path == path)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.prevPageUrl, prevPageUrl) || other.prevPageUrl == prevPageUrl)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._links, _links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,const DeepCollectionEquality().hash(_data),firstPageUrl,from,lastPage,lastPageUrl,nextPageUrl,path,perPage,prevPageUrl,to,total,const DeepCollectionEquality().hash(_links));

@override
String toString() {
  return 'DataModel<$T>(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total, links: $links)';
}


}

/// @nodoc
abstract mixin class _$DataModelCopyWith<T,$Res> implements $DataModelCopyWith<T, $Res> {
  factory _$DataModelCopyWith(_DataModel<T> value, $Res Function(_DataModel<T>) _then) = __$DataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'data') List<T>? data,@JsonKey(name: 'first_page_url') String? firstPageUrl,@JsonKey(name: 'from') int? from,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'last_page_url') String? lastPageUrl,@JsonKey(name: 'next_page_url') String? nextPageUrl,@JsonKey(name: 'path') String? path,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'prev_page_url') String? prevPageUrl,@JsonKey(name: 'to') int? to,@JsonKey(name: 'total') int? total,@JsonKey(name: 'links') List<LinksModel>? links
});




}
/// @nodoc
class __$DataModelCopyWithImpl<T,$Res>
    implements _$DataModelCopyWith<T, $Res> {
  __$DataModelCopyWithImpl(this._self, this._then);

  final _DataModel<T> _self;
  final $Res Function(_DataModel<T>) _then;

/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? data = freezed,Object? firstPageUrl = freezed,Object? from = freezed,Object? lastPage = freezed,Object? lastPageUrl = freezed,Object? nextPageUrl = freezed,Object? path = freezed,Object? perPage = freezed,Object? prevPageUrl = freezed,Object? to = freezed,Object? total = freezed,Object? links = freezed,}) {
  return _then(_DataModel<T>(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,firstPageUrl: freezed == firstPageUrl ? _self.firstPageUrl : firstPageUrl // ignore: cast_nullable_to_non_nullable
as String?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,lastPageUrl: freezed == lastPageUrl ? _self.lastPageUrl : lastPageUrl // ignore: cast_nullable_to_non_nullable
as String?,nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,prevPageUrl: freezed == prevPageUrl ? _self.prevPageUrl : prevPageUrl // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,links: freezed == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<LinksModel>?,
  ));
}


}

// dart format on
