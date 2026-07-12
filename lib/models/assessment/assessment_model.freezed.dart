// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssessmentModel {

 String? get title; String? get description; String? get icon;
/// Create a copy of AssessmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentModelCopyWith<AssessmentModel> get copyWith => _$AssessmentModelCopyWithImpl<AssessmentModel>(this as AssessmentModel, _$identity);

  /// Serializes this AssessmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,icon);

@override
String toString() {
  return 'AssessmentModel(title: $title, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $AssessmentModelCopyWith<$Res>  {
  factory $AssessmentModelCopyWith(AssessmentModel value, $Res Function(AssessmentModel) _then) = _$AssessmentModelCopyWithImpl;
@useResult
$Res call({
 String? title, String? description, String? icon
});




}
/// @nodoc
class _$AssessmentModelCopyWithImpl<$Res>
    implements $AssessmentModelCopyWith<$Res> {
  _$AssessmentModelCopyWithImpl(this._self, this._then);

  final AssessmentModel _self;
  final $Res Function(AssessmentModel) _then;

/// Create a copy of AssessmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? description = freezed,Object? icon = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssessmentModel].
extension AssessmentModelPatterns on AssessmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssessmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssessmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssessmentModel value)  $default,){
final _that = this;
switch (_that) {
case _AssessmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssessmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _AssessmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? description,  String? icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssessmentModel() when $default != null:
return $default(_that.title,_that.description,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? description,  String? icon)  $default,) {final _that = this;
switch (_that) {
case _AssessmentModel():
return $default(_that.title,_that.description,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? description,  String? icon)?  $default,) {final _that = this;
switch (_that) {
case _AssessmentModel() when $default != null:
return $default(_that.title,_that.description,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssessmentModel implements AssessmentModel {
  const _AssessmentModel({this.title, this.description, this.icon});
  factory _AssessmentModel.fromJson(Map<String, dynamic> json) => _$AssessmentModelFromJson(json);

@override final  String? title;
@override final  String? description;
@override final  String? icon;

/// Create a copy of AssessmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessmentModelCopyWith<_AssessmentModel> get copyWith => __$AssessmentModelCopyWithImpl<_AssessmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssessmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessmentModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,icon);

@override
String toString() {
  return 'AssessmentModel(title: $title, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$AssessmentModelCopyWith<$Res> implements $AssessmentModelCopyWith<$Res> {
  factory _$AssessmentModelCopyWith(_AssessmentModel value, $Res Function(_AssessmentModel) _then) = __$AssessmentModelCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? description, String? icon
});




}
/// @nodoc
class __$AssessmentModelCopyWithImpl<$Res>
    implements _$AssessmentModelCopyWith<$Res> {
  __$AssessmentModelCopyWithImpl(this._self, this._then);

  final _AssessmentModel _self;
  final $Res Function(_AssessmentModel) _then;

/// Create a copy of AssessmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? description = freezed,Object? icon = freezed,}) {
  return _then(_AssessmentModel(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
