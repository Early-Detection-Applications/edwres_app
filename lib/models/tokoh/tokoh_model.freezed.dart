// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tokoh_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokohModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'nama_tokoh') String? get namaTokoh;@JsonKey(name: 'nama_teori') String? get namaTeori;@JsonKey(name: 'teori') String? get teori;@JsonKey(name: 'gambar') String? get gambar;
/// Create a copy of TokohModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokohModelCopyWith<TokohModel> get copyWith => _$TokohModelCopyWithImpl<TokohModel>(this as TokohModel, _$identity);

  /// Serializes this TokohModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokohModel&&(identical(other.id, id) || other.id == id)&&(identical(other.namaTokoh, namaTokoh) || other.namaTokoh == namaTokoh)&&(identical(other.namaTeori, namaTeori) || other.namaTeori == namaTeori)&&(identical(other.teori, teori) || other.teori == teori)&&(identical(other.gambar, gambar) || other.gambar == gambar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,namaTokoh,namaTeori,teori,gambar);

@override
String toString() {
  return 'TokohModel(id: $id, namaTokoh: $namaTokoh, namaTeori: $namaTeori, teori: $teori, gambar: $gambar)';
}


}

/// @nodoc
abstract mixin class $TokohModelCopyWith<$Res>  {
  factory $TokohModelCopyWith(TokohModel value, $Res Function(TokohModel) _then) = _$TokohModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'nama_tokoh') String? namaTokoh,@JsonKey(name: 'nama_teori') String? namaTeori,@JsonKey(name: 'teori') String? teori,@JsonKey(name: 'gambar') String? gambar
});




}
/// @nodoc
class _$TokohModelCopyWithImpl<$Res>
    implements $TokohModelCopyWith<$Res> {
  _$TokohModelCopyWithImpl(this._self, this._then);

  final TokohModel _self;
  final $Res Function(TokohModel) _then;

/// Create a copy of TokohModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? namaTokoh = freezed,Object? namaTeori = freezed,Object? teori = freezed,Object? gambar = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,namaTokoh: freezed == namaTokoh ? _self.namaTokoh : namaTokoh // ignore: cast_nullable_to_non_nullable
as String?,namaTeori: freezed == namaTeori ? _self.namaTeori : namaTeori // ignore: cast_nullable_to_non_nullable
as String?,teori: freezed == teori ? _self.teori : teori // ignore: cast_nullable_to_non_nullable
as String?,gambar: freezed == gambar ? _self.gambar : gambar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TokohModel].
extension TokohModelPatterns on TokohModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokohModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokohModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokohModel value)  $default,){
final _that = this;
switch (_that) {
case _TokohModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokohModel value)?  $default,){
final _that = this;
switch (_that) {
case _TokohModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'nama_tokoh')  String? namaTokoh, @JsonKey(name: 'nama_teori')  String? namaTeori, @JsonKey(name: 'teori')  String? teori, @JsonKey(name: 'gambar')  String? gambar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokohModel() when $default != null:
return $default(_that.id,_that.namaTokoh,_that.namaTeori,_that.teori,_that.gambar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'nama_tokoh')  String? namaTokoh, @JsonKey(name: 'nama_teori')  String? namaTeori, @JsonKey(name: 'teori')  String? teori, @JsonKey(name: 'gambar')  String? gambar)  $default,) {final _that = this;
switch (_that) {
case _TokohModel():
return $default(_that.id,_that.namaTokoh,_that.namaTeori,_that.teori,_that.gambar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'nama_tokoh')  String? namaTokoh, @JsonKey(name: 'nama_teori')  String? namaTeori, @JsonKey(name: 'teori')  String? teori, @JsonKey(name: 'gambar')  String? gambar)?  $default,) {final _that = this;
switch (_that) {
case _TokohModel() when $default != null:
return $default(_that.id,_that.namaTokoh,_that.namaTeori,_that.teori,_that.gambar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TokohModel implements TokohModel {
  const _TokohModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'nama_tokoh') this.namaTokoh, @JsonKey(name: 'nama_teori') this.namaTeori, @JsonKey(name: 'teori') this.teori, @JsonKey(name: 'gambar') this.gambar});
  factory _TokohModel.fromJson(Map<String, dynamic> json) => _$TokohModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'nama_tokoh') final  String? namaTokoh;
@override@JsonKey(name: 'nama_teori') final  String? namaTeori;
@override@JsonKey(name: 'teori') final  String? teori;
@override@JsonKey(name: 'gambar') final  String? gambar;

/// Create a copy of TokohModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokohModelCopyWith<_TokohModel> get copyWith => __$TokohModelCopyWithImpl<_TokohModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokohModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokohModel&&(identical(other.id, id) || other.id == id)&&(identical(other.namaTokoh, namaTokoh) || other.namaTokoh == namaTokoh)&&(identical(other.namaTeori, namaTeori) || other.namaTeori == namaTeori)&&(identical(other.teori, teori) || other.teori == teori)&&(identical(other.gambar, gambar) || other.gambar == gambar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,namaTokoh,namaTeori,teori,gambar);

@override
String toString() {
  return 'TokohModel(id: $id, namaTokoh: $namaTokoh, namaTeori: $namaTeori, teori: $teori, gambar: $gambar)';
}


}

/// @nodoc
abstract mixin class _$TokohModelCopyWith<$Res> implements $TokohModelCopyWith<$Res> {
  factory _$TokohModelCopyWith(_TokohModel value, $Res Function(_TokohModel) _then) = __$TokohModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'nama_tokoh') String? namaTokoh,@JsonKey(name: 'nama_teori') String? namaTeori,@JsonKey(name: 'teori') String? teori,@JsonKey(name: 'gambar') String? gambar
});




}
/// @nodoc
class __$TokohModelCopyWithImpl<$Res>
    implements _$TokohModelCopyWith<$Res> {
  __$TokohModelCopyWithImpl(this._self, this._then);

  final _TokohModel _self;
  final $Res Function(_TokohModel) _then;

/// Create a copy of TokohModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? namaTokoh = freezed,Object? namaTeori = freezed,Object? teori = freezed,Object? gambar = freezed,}) {
  return _then(_TokohModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,namaTokoh: freezed == namaTokoh ? _self.namaTokoh : namaTokoh // ignore: cast_nullable_to_non_nullable
as String?,namaTeori: freezed == namaTeori ? _self.namaTeori : namaTeori // ignore: cast_nullable_to_non_nullable
as String?,teori: freezed == teori ? _self.teori : teori // ignore: cast_nullable_to_non_nullable
as String?,gambar: freezed == gambar ? _self.gambar : gambar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
