// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'indicator_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IndicatorResponseModel {

@JsonKey(name: 'indikator') List<IndicatorModel> get indikator;
/// Create a copy of IndicatorResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndicatorResponseModelCopyWith<IndicatorResponseModel> get copyWith => _$IndicatorResponseModelCopyWithImpl<IndicatorResponseModel>(this as IndicatorResponseModel, _$identity);

  /// Serializes this IndicatorResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndicatorResponseModel&&const DeepCollectionEquality().equals(other.indikator, indikator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(indikator));

@override
String toString() {
  return 'IndicatorResponseModel(indikator: $indikator)';
}


}

/// @nodoc
abstract mixin class $IndicatorResponseModelCopyWith<$Res>  {
  factory $IndicatorResponseModelCopyWith(IndicatorResponseModel value, $Res Function(IndicatorResponseModel) _then) = _$IndicatorResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'indikator') List<IndicatorModel> indikator
});




}
/// @nodoc
class _$IndicatorResponseModelCopyWithImpl<$Res>
    implements $IndicatorResponseModelCopyWith<$Res> {
  _$IndicatorResponseModelCopyWithImpl(this._self, this._then);

  final IndicatorResponseModel _self;
  final $Res Function(IndicatorResponseModel) _then;

/// Create a copy of IndicatorResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? indikator = null,}) {
  return _then(_self.copyWith(
indikator: null == indikator ? _self.indikator : indikator // ignore: cast_nullable_to_non_nullable
as List<IndicatorModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [IndicatorResponseModel].
extension IndicatorResponseModelPatterns on IndicatorResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IndicatorResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IndicatorResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IndicatorResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _IndicatorResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IndicatorResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _IndicatorResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'indikator')  List<IndicatorModel> indikator)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IndicatorResponseModel() when $default != null:
return $default(_that.indikator);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'indikator')  List<IndicatorModel> indikator)  $default,) {final _that = this;
switch (_that) {
case _IndicatorResponseModel():
return $default(_that.indikator);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'indikator')  List<IndicatorModel> indikator)?  $default,) {final _that = this;
switch (_that) {
case _IndicatorResponseModel() when $default != null:
return $default(_that.indikator);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IndicatorResponseModel implements IndicatorResponseModel {
  const _IndicatorResponseModel({@JsonKey(name: 'indikator') final  List<IndicatorModel> indikator = const []}): _indikator = indikator;
  factory _IndicatorResponseModel.fromJson(Map<String, dynamic> json) => _$IndicatorResponseModelFromJson(json);

 final  List<IndicatorModel> _indikator;
@override@JsonKey(name: 'indikator') List<IndicatorModel> get indikator {
  if (_indikator is EqualUnmodifiableListView) return _indikator;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_indikator);
}


/// Create a copy of IndicatorResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IndicatorResponseModelCopyWith<_IndicatorResponseModel> get copyWith => __$IndicatorResponseModelCopyWithImpl<_IndicatorResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IndicatorResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IndicatorResponseModel&&const DeepCollectionEquality().equals(other._indikator, _indikator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_indikator));

@override
String toString() {
  return 'IndicatorResponseModel(indikator: $indikator)';
}


}

/// @nodoc
abstract mixin class _$IndicatorResponseModelCopyWith<$Res> implements $IndicatorResponseModelCopyWith<$Res> {
  factory _$IndicatorResponseModelCopyWith(_IndicatorResponseModel value, $Res Function(_IndicatorResponseModel) _then) = __$IndicatorResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'indikator') List<IndicatorModel> indikator
});




}
/// @nodoc
class __$IndicatorResponseModelCopyWithImpl<$Res>
    implements _$IndicatorResponseModelCopyWith<$Res> {
  __$IndicatorResponseModelCopyWithImpl(this._self, this._then);

  final _IndicatorResponseModel _self;
  final $Res Function(_IndicatorResponseModel) _then;

/// Create a copy of IndicatorResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? indikator = null,}) {
  return _then(_IndicatorResponseModel(
indikator: null == indikator ? _self._indikator : indikator // ignore: cast_nullable_to_non_nullable
as List<IndicatorModel>,
  ));
}


}

// dart format on
