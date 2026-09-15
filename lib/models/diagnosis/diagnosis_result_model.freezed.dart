// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiagnosisResultModel {

@JsonKey(name: 'eas') DiagnosisEasModel? get eas;@StringToDoubleConverter() double? get mb;@StringToDoubleConverter() double? get md;@StringToDoubleConverter() double? get cf;@StringToDoubleConverter() double? get percentage;@JsonKey(name: 'category') String? get category;
/// Create a copy of DiagnosisResultModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisResultModelCopyWith<DiagnosisResultModel> get copyWith => _$DiagnosisResultModelCopyWithImpl<DiagnosisResultModel>(this as DiagnosisResultModel, _$identity);

  /// Serializes this DiagnosisResultModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosisResultModel&&(identical(other.eas, eas) || other.eas == eas)&&(identical(other.mb, mb) || other.mb == mb)&&(identical(other.md, md) || other.md == md)&&(identical(other.cf, cf) || other.cf == cf)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eas,mb,md,cf,percentage,category);

@override
String toString() {
  return 'DiagnosisResultModel(eas: $eas, mb: $mb, md: $md, cf: $cf, percentage: $percentage, category: $category)';
}


}

/// @nodoc
abstract mixin class $DiagnosisResultModelCopyWith<$Res>  {
  factory $DiagnosisResultModelCopyWith(DiagnosisResultModel value, $Res Function(DiagnosisResultModel) _then) = _$DiagnosisResultModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'eas') DiagnosisEasModel? eas,@StringToDoubleConverter() double? mb,@StringToDoubleConverter() double? md,@StringToDoubleConverter() double? cf,@StringToDoubleConverter() double? percentage,@JsonKey(name: 'category') String? category
});


$DiagnosisEasModelCopyWith<$Res>? get eas;

}
/// @nodoc
class _$DiagnosisResultModelCopyWithImpl<$Res>
    implements $DiagnosisResultModelCopyWith<$Res> {
  _$DiagnosisResultModelCopyWithImpl(this._self, this._then);

  final DiagnosisResultModel _self;
  final $Res Function(DiagnosisResultModel) _then;

/// Create a copy of DiagnosisResultModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eas = freezed,Object? mb = freezed,Object? md = freezed,Object? cf = freezed,Object? percentage = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
eas: freezed == eas ? _self.eas : eas // ignore: cast_nullable_to_non_nullable
as DiagnosisEasModel?,mb: freezed == mb ? _self.mb : mb // ignore: cast_nullable_to_non_nullable
as double?,md: freezed == md ? _self.md : md // ignore: cast_nullable_to_non_nullable
as double?,cf: freezed == cf ? _self.cf : cf // ignore: cast_nullable_to_non_nullable
as double?,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DiagnosisResultModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisEasModelCopyWith<$Res>? get eas {
    if (_self.eas == null) {
    return null;
  }

  return $DiagnosisEasModelCopyWith<$Res>(_self.eas!, (value) {
    return _then(_self.copyWith(eas: value));
  });
}
}


/// Adds pattern-matching-related methods to [DiagnosisResultModel].
extension DiagnosisResultModelPatterns on DiagnosisResultModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosisResultModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosisResultModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosisResultModel value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosisResultModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosisResultModel value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosisResultModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'eas')  DiagnosisEasModel? eas, @StringToDoubleConverter()  double? mb, @StringToDoubleConverter()  double? md, @StringToDoubleConverter()  double? cf, @StringToDoubleConverter()  double? percentage, @JsonKey(name: 'category')  String? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosisResultModel() when $default != null:
return $default(_that.eas,_that.mb,_that.md,_that.cf,_that.percentage,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'eas')  DiagnosisEasModel? eas, @StringToDoubleConverter()  double? mb, @StringToDoubleConverter()  double? md, @StringToDoubleConverter()  double? cf, @StringToDoubleConverter()  double? percentage, @JsonKey(name: 'category')  String? category)  $default,) {final _that = this;
switch (_that) {
case _DiagnosisResultModel():
return $default(_that.eas,_that.mb,_that.md,_that.cf,_that.percentage,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'eas')  DiagnosisEasModel? eas, @StringToDoubleConverter()  double? mb, @StringToDoubleConverter()  double? md, @StringToDoubleConverter()  double? cf, @StringToDoubleConverter()  double? percentage, @JsonKey(name: 'category')  String? category)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosisResultModel() when $default != null:
return $default(_that.eas,_that.mb,_that.md,_that.cf,_that.percentage,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiagnosisResultModel implements DiagnosisResultModel {
  const _DiagnosisResultModel({@JsonKey(name: 'eas') this.eas, @StringToDoubleConverter() this.mb, @StringToDoubleConverter() this.md, @StringToDoubleConverter() this.cf, @StringToDoubleConverter() this.percentage, @JsonKey(name: 'category') this.category});
  factory _DiagnosisResultModel.fromJson(Map<String, dynamic> json) => _$DiagnosisResultModelFromJson(json);

@override@JsonKey(name: 'eas') final  DiagnosisEasModel? eas;
@override@StringToDoubleConverter() final  double? mb;
@override@StringToDoubleConverter() final  double? md;
@override@StringToDoubleConverter() final  double? cf;
@override@StringToDoubleConverter() final  double? percentage;
@override@JsonKey(name: 'category') final  String? category;

/// Create a copy of DiagnosisResultModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosisResultModelCopyWith<_DiagnosisResultModel> get copyWith => __$DiagnosisResultModelCopyWithImpl<_DiagnosisResultModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosisResultModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosisResultModel&&(identical(other.eas, eas) || other.eas == eas)&&(identical(other.mb, mb) || other.mb == mb)&&(identical(other.md, md) || other.md == md)&&(identical(other.cf, cf) || other.cf == cf)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eas,mb,md,cf,percentage,category);

@override
String toString() {
  return 'DiagnosisResultModel(eas: $eas, mb: $mb, md: $md, cf: $cf, percentage: $percentage, category: $category)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisResultModelCopyWith<$Res> implements $DiagnosisResultModelCopyWith<$Res> {
  factory _$DiagnosisResultModelCopyWith(_DiagnosisResultModel value, $Res Function(_DiagnosisResultModel) _then) = __$DiagnosisResultModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'eas') DiagnosisEasModel? eas,@StringToDoubleConverter() double? mb,@StringToDoubleConverter() double? md,@StringToDoubleConverter() double? cf,@StringToDoubleConverter() double? percentage,@JsonKey(name: 'category') String? category
});


@override $DiagnosisEasModelCopyWith<$Res>? get eas;

}
/// @nodoc
class __$DiagnosisResultModelCopyWithImpl<$Res>
    implements _$DiagnosisResultModelCopyWith<$Res> {
  __$DiagnosisResultModelCopyWithImpl(this._self, this._then);

  final _DiagnosisResultModel _self;
  final $Res Function(_DiagnosisResultModel) _then;

/// Create a copy of DiagnosisResultModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eas = freezed,Object? mb = freezed,Object? md = freezed,Object? cf = freezed,Object? percentage = freezed,Object? category = freezed,}) {
  return _then(_DiagnosisResultModel(
eas: freezed == eas ? _self.eas : eas // ignore: cast_nullable_to_non_nullable
as DiagnosisEasModel?,mb: freezed == mb ? _self.mb : mb // ignore: cast_nullable_to_non_nullable
as double?,md: freezed == md ? _self.md : md // ignore: cast_nullable_to_non_nullable
as double?,cf: freezed == cf ? _self.cf : cf // ignore: cast_nullable_to_non_nullable
as double?,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DiagnosisResultModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisEasModelCopyWith<$Res>? get eas {
    if (_self.eas == null) {
    return null;
  }

  return $DiagnosisEasModelCopyWith<$Res>(_self.eas!, (value) {
    return _then(_self.copyWith(eas: value));
  });
}
}

// dart format on
