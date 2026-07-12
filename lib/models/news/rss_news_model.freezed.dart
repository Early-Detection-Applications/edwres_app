// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rss_news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RssNewsModel {

@JsonKey(name: 'title') String? get title;@JsonKey(name: 'link') String? get link;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'pubDate') String? get pubDate;@JsonKey(name: 'image') String? get image;
/// Create a copy of RssNewsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RssNewsModelCopyWith<RssNewsModel> get copyWith => _$RssNewsModelCopyWithImpl<RssNewsModel>(this as RssNewsModel, _$identity);

  /// Serializes this RssNewsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RssNewsModel&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.description, description) || other.description == description)&&(identical(other.pubDate, pubDate) || other.pubDate == pubDate)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,description,pubDate,image);

@override
String toString() {
  return 'RssNewsModel(title: $title, link: $link, description: $description, pubDate: $pubDate, image: $image)';
}


}

/// @nodoc
abstract mixin class $RssNewsModelCopyWith<$Res>  {
  factory $RssNewsModelCopyWith(RssNewsModel value, $Res Function(RssNewsModel) _then) = _$RssNewsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'link') String? link,@JsonKey(name: 'description') String? description,@JsonKey(name: 'pubDate') String? pubDate,@JsonKey(name: 'image') String? image
});




}
/// @nodoc
class _$RssNewsModelCopyWithImpl<$Res>
    implements $RssNewsModelCopyWith<$Res> {
  _$RssNewsModelCopyWithImpl(this._self, this._then);

  final RssNewsModel _self;
  final $Res Function(RssNewsModel) _then;

/// Create a copy of RssNewsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? link = freezed,Object? description = freezed,Object? pubDate = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,pubDate: freezed == pubDate ? _self.pubDate : pubDate // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RssNewsModel].
extension RssNewsModelPatterns on RssNewsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RssNewsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RssNewsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RssNewsModel value)  $default,){
final _that = this;
switch (_that) {
case _RssNewsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RssNewsModel value)?  $default,){
final _that = this;
switch (_that) {
case _RssNewsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'link')  String? link, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'pubDate')  String? pubDate, @JsonKey(name: 'image')  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RssNewsModel() when $default != null:
return $default(_that.title,_that.link,_that.description,_that.pubDate,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'link')  String? link, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'pubDate')  String? pubDate, @JsonKey(name: 'image')  String? image)  $default,) {final _that = this;
switch (_that) {
case _RssNewsModel():
return $default(_that.title,_that.link,_that.description,_that.pubDate,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'link')  String? link, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'pubDate')  String? pubDate, @JsonKey(name: 'image')  String? image)?  $default,) {final _that = this;
switch (_that) {
case _RssNewsModel() when $default != null:
return $default(_that.title,_that.link,_that.description,_that.pubDate,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RssNewsModel implements RssNewsModel {
  const _RssNewsModel({@JsonKey(name: 'title') this.title, @JsonKey(name: 'link') this.link, @JsonKey(name: 'description') this.description, @JsonKey(name: 'pubDate') this.pubDate, @JsonKey(name: 'image') this.image});
  factory _RssNewsModel.fromJson(Map<String, dynamic> json) => _$RssNewsModelFromJson(json);

@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'link') final  String? link;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'pubDate') final  String? pubDate;
@override@JsonKey(name: 'image') final  String? image;

/// Create a copy of RssNewsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RssNewsModelCopyWith<_RssNewsModel> get copyWith => __$RssNewsModelCopyWithImpl<_RssNewsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RssNewsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RssNewsModel&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.description, description) || other.description == description)&&(identical(other.pubDate, pubDate) || other.pubDate == pubDate)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,description,pubDate,image);

@override
String toString() {
  return 'RssNewsModel(title: $title, link: $link, description: $description, pubDate: $pubDate, image: $image)';
}


}

/// @nodoc
abstract mixin class _$RssNewsModelCopyWith<$Res> implements $RssNewsModelCopyWith<$Res> {
  factory _$RssNewsModelCopyWith(_RssNewsModel value, $Res Function(_RssNewsModel) _then) = __$RssNewsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'link') String? link,@JsonKey(name: 'description') String? description,@JsonKey(name: 'pubDate') String? pubDate,@JsonKey(name: 'image') String? image
});




}
/// @nodoc
class __$RssNewsModelCopyWithImpl<$Res>
    implements _$RssNewsModelCopyWith<$Res> {
  __$RssNewsModelCopyWithImpl(this._self, this._then);

  final _RssNewsModel _self;
  final $Res Function(_RssNewsModel) _then;

/// Create a copy of RssNewsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? link = freezed,Object? description = freezed,Object? pubDate = freezed,Object? image = freezed,}) {
  return _then(_RssNewsModel(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,pubDate: freezed == pubDate ? _self.pubDate : pubDate // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
