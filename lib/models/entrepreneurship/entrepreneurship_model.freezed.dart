// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entrepreneurship_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EntrepreneurshipModel {

 int? get id; String? get title; String? get image; String? get link;
/// Create a copy of EntrepreneurshipModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntrepreneurshipModelCopyWith<EntrepreneurshipModel> get copyWith => _$EntrepreneurshipModelCopyWithImpl<EntrepreneurshipModel>(this as EntrepreneurshipModel, _$identity);

  /// Serializes this EntrepreneurshipModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntrepreneurshipModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,image,link);

@override
String toString() {
  return 'EntrepreneurshipModel(id: $id, title: $title, image: $image, link: $link)';
}


}

/// @nodoc
abstract mixin class $EntrepreneurshipModelCopyWith<$Res>  {
  factory $EntrepreneurshipModelCopyWith(EntrepreneurshipModel value, $Res Function(EntrepreneurshipModel) _then) = _$EntrepreneurshipModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? title, String? image, String? link
});




}
/// @nodoc
class _$EntrepreneurshipModelCopyWithImpl<$Res>
    implements $EntrepreneurshipModelCopyWith<$Res> {
  _$EntrepreneurshipModelCopyWithImpl(this._self, this._then);

  final EntrepreneurshipModel _self;
  final $Res Function(EntrepreneurshipModel) _then;

/// Create a copy of EntrepreneurshipModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? image = freezed,Object? link = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EntrepreneurshipModel].
extension EntrepreneurshipModelPatterns on EntrepreneurshipModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntrepreneurshipModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntrepreneurshipModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntrepreneurshipModel value)  $default,){
final _that = this;
switch (_that) {
case _EntrepreneurshipModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntrepreneurshipModel value)?  $default,){
final _that = this;
switch (_that) {
case _EntrepreneurshipModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? title,  String? image,  String? link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntrepreneurshipModel() when $default != null:
return $default(_that.id,_that.title,_that.image,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? title,  String? image,  String? link)  $default,) {final _that = this;
switch (_that) {
case _EntrepreneurshipModel():
return $default(_that.id,_that.title,_that.image,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? title,  String? image,  String? link)?  $default,) {final _that = this;
switch (_that) {
case _EntrepreneurshipModel() when $default != null:
return $default(_that.id,_that.title,_that.image,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EntrepreneurshipModel implements EntrepreneurshipModel {
  const _EntrepreneurshipModel({this.id, this.title, this.image, this.link});
  factory _EntrepreneurshipModel.fromJson(Map<String, dynamic> json) => _$EntrepreneurshipModelFromJson(json);

@override final  int? id;
@override final  String? title;
@override final  String? image;
@override final  String? link;

/// Create a copy of EntrepreneurshipModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntrepreneurshipModelCopyWith<_EntrepreneurshipModel> get copyWith => __$EntrepreneurshipModelCopyWithImpl<_EntrepreneurshipModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntrepreneurshipModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntrepreneurshipModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,image,link);

@override
String toString() {
  return 'EntrepreneurshipModel(id: $id, title: $title, image: $image, link: $link)';
}


}

/// @nodoc
abstract mixin class _$EntrepreneurshipModelCopyWith<$Res> implements $EntrepreneurshipModelCopyWith<$Res> {
  factory _$EntrepreneurshipModelCopyWith(_EntrepreneurshipModel value, $Res Function(_EntrepreneurshipModel) _then) = __$EntrepreneurshipModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? title, String? image, String? link
});




}
/// @nodoc
class __$EntrepreneurshipModelCopyWithImpl<$Res>
    implements _$EntrepreneurshipModelCopyWith<$Res> {
  __$EntrepreneurshipModelCopyWithImpl(this._self, this._then);

  final _EntrepreneurshipModel _self;
  final $Res Function(_EntrepreneurshipModel) _then;

/// Create a copy of EntrepreneurshipModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? image = freezed,Object? link = freezed,}) {
  return _then(_EntrepreneurshipModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
