// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entrepreneurship_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EntrepreneurshipResponseModel {

@JsonKey(name: 'berwirausaha') List<EntrepreneurshipModel>? get data; int? get limit;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'total_records') int? get totalRecords;
/// Create a copy of EntrepreneurshipResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntrepreneurshipResponseModelCopyWith<EntrepreneurshipResponseModel> get copyWith => _$EntrepreneurshipResponseModelCopyWithImpl<EntrepreneurshipResponseModel>(this as EntrepreneurshipResponseModel, _$identity);

  /// Serializes this EntrepreneurshipResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntrepreneurshipResponseModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalRecords, totalRecords) || other.totalRecords == totalRecords));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),limit,currentPage,totalRecords);

@override
String toString() {
  return 'EntrepreneurshipResponseModel(data: $data, limit: $limit, currentPage: $currentPage, totalRecords: $totalRecords)';
}


}

/// @nodoc
abstract mixin class $EntrepreneurshipResponseModelCopyWith<$Res>  {
  factory $EntrepreneurshipResponseModelCopyWith(EntrepreneurshipResponseModel value, $Res Function(EntrepreneurshipResponseModel) _then) = _$EntrepreneurshipResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'berwirausaha') List<EntrepreneurshipModel>? data, int? limit,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'total_records') int? totalRecords
});




}
/// @nodoc
class _$EntrepreneurshipResponseModelCopyWithImpl<$Res>
    implements $EntrepreneurshipResponseModelCopyWith<$Res> {
  _$EntrepreneurshipResponseModelCopyWithImpl(this._self, this._then);

  final EntrepreneurshipResponseModel _self;
  final $Res Function(EntrepreneurshipResponseModel) _then;

/// Create a copy of EntrepreneurshipResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? limit = freezed,Object? currentPage = freezed,Object? totalRecords = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<EntrepreneurshipModel>?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,totalRecords: freezed == totalRecords ? _self.totalRecords : totalRecords // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [EntrepreneurshipResponseModel].
extension EntrepreneurshipResponseModelPatterns on EntrepreneurshipResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntrepreneurshipResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntrepreneurshipResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntrepreneurshipResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _EntrepreneurshipResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntrepreneurshipResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _EntrepreneurshipResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'berwirausaha')  List<EntrepreneurshipModel>? data,  int? limit, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'total_records')  int? totalRecords)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntrepreneurshipResponseModel() when $default != null:
return $default(_that.data,_that.limit,_that.currentPage,_that.totalRecords);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'berwirausaha')  List<EntrepreneurshipModel>? data,  int? limit, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'total_records')  int? totalRecords)  $default,) {final _that = this;
switch (_that) {
case _EntrepreneurshipResponseModel():
return $default(_that.data,_that.limit,_that.currentPage,_that.totalRecords);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'berwirausaha')  List<EntrepreneurshipModel>? data,  int? limit, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'total_records')  int? totalRecords)?  $default,) {final _that = this;
switch (_that) {
case _EntrepreneurshipResponseModel() when $default != null:
return $default(_that.data,_that.limit,_that.currentPage,_that.totalRecords);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EntrepreneurshipResponseModel implements EntrepreneurshipResponseModel {
  const _EntrepreneurshipResponseModel({@JsonKey(name: 'berwirausaha') final  List<EntrepreneurshipModel>? data, this.limit, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'total_records') this.totalRecords}): _data = data;
  factory _EntrepreneurshipResponseModel.fromJson(Map<String, dynamic> json) => _$EntrepreneurshipResponseModelFromJson(json);

 final  List<EntrepreneurshipModel>? _data;
@override@JsonKey(name: 'berwirausaha') List<EntrepreneurshipModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? limit;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'total_records') final  int? totalRecords;

/// Create a copy of EntrepreneurshipResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntrepreneurshipResponseModelCopyWith<_EntrepreneurshipResponseModel> get copyWith => __$EntrepreneurshipResponseModelCopyWithImpl<_EntrepreneurshipResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntrepreneurshipResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntrepreneurshipResponseModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalRecords, totalRecords) || other.totalRecords == totalRecords));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),limit,currentPage,totalRecords);

@override
String toString() {
  return 'EntrepreneurshipResponseModel(data: $data, limit: $limit, currentPage: $currentPage, totalRecords: $totalRecords)';
}


}

/// @nodoc
abstract mixin class _$EntrepreneurshipResponseModelCopyWith<$Res> implements $EntrepreneurshipResponseModelCopyWith<$Res> {
  factory _$EntrepreneurshipResponseModelCopyWith(_EntrepreneurshipResponseModel value, $Res Function(_EntrepreneurshipResponseModel) _then) = __$EntrepreneurshipResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'berwirausaha') List<EntrepreneurshipModel>? data, int? limit,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'total_records') int? totalRecords
});




}
/// @nodoc
class __$EntrepreneurshipResponseModelCopyWithImpl<$Res>
    implements _$EntrepreneurshipResponseModelCopyWith<$Res> {
  __$EntrepreneurshipResponseModelCopyWithImpl(this._self, this._then);

  final _EntrepreneurshipResponseModel _self;
  final $Res Function(_EntrepreneurshipResponseModel) _then;

/// Create a copy of EntrepreneurshipResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? limit = freezed,Object? currentPage = freezed,Object? totalRecords = freezed,}) {
  return _then(_EntrepreneurshipResponseModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<EntrepreneurshipModel>?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,totalRecords: freezed == totalRecords ? _self.totalRecords : totalRecords // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
