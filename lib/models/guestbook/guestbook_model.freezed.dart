// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guestbook_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GuestbookModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'nama') String? get nama;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'pesan') String? get message;
/// Create a copy of GuestbookModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuestbookModelCopyWith<GuestbookModel> get copyWith => _$GuestbookModelCopyWithImpl<GuestbookModel>(this as GuestbookModel, _$identity);

  /// Serializes this GuestbookModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuestbookModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.email, email) || other.email == email)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nama,email,message);

@override
String toString() {
  return 'GuestbookModel(id: $id, nama: $nama, email: $email, message: $message)';
}


}

/// @nodoc
abstract mixin class $GuestbookModelCopyWith<$Res>  {
  factory $GuestbookModelCopyWith(GuestbookModel value, $Res Function(GuestbookModel) _then) = _$GuestbookModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'nama') String? nama,@JsonKey(name: 'email') String? email,@JsonKey(name: 'pesan') String? message
});




}
/// @nodoc
class _$GuestbookModelCopyWithImpl<$Res>
    implements $GuestbookModelCopyWith<$Res> {
  _$GuestbookModelCopyWithImpl(this._self, this._then);

  final GuestbookModel _self;
  final $Res Function(GuestbookModel) _then;

/// Create a copy of GuestbookModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nama = freezed,Object? email = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nama: freezed == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GuestbookModel].
extension GuestbookModelPatterns on GuestbookModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuestbookModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuestbookModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuestbookModel value)  $default,){
final _that = this;
switch (_that) {
case _GuestbookModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuestbookModel value)?  $default,){
final _that = this;
switch (_that) {
case _GuestbookModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'nama')  String? nama, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'pesan')  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuestbookModel() when $default != null:
return $default(_that.id,_that.nama,_that.email,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'nama')  String? nama, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'pesan')  String? message)  $default,) {final _that = this;
switch (_that) {
case _GuestbookModel():
return $default(_that.id,_that.nama,_that.email,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'nama')  String? nama, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'pesan')  String? message)?  $default,) {final _that = this;
switch (_that) {
case _GuestbookModel() when $default != null:
return $default(_that.id,_that.nama,_that.email,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GuestbookModel implements GuestbookModel {
  const _GuestbookModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'nama') this.nama, @JsonKey(name: 'email') this.email, @JsonKey(name: 'pesan') this.message});
  factory _GuestbookModel.fromJson(Map<String, dynamic> json) => _$GuestbookModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'nama') final  String? nama;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'pesan') final  String? message;

/// Create a copy of GuestbookModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuestbookModelCopyWith<_GuestbookModel> get copyWith => __$GuestbookModelCopyWithImpl<_GuestbookModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GuestbookModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuestbookModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.email, email) || other.email == email)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nama,email,message);

@override
String toString() {
  return 'GuestbookModel(id: $id, nama: $nama, email: $email, message: $message)';
}


}

/// @nodoc
abstract mixin class _$GuestbookModelCopyWith<$Res> implements $GuestbookModelCopyWith<$Res> {
  factory _$GuestbookModelCopyWith(_GuestbookModel value, $Res Function(_GuestbookModel) _then) = __$GuestbookModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'nama') String? nama,@JsonKey(name: 'email') String? email,@JsonKey(name: 'pesan') String? message
});




}
/// @nodoc
class __$GuestbookModelCopyWithImpl<$Res>
    implements _$GuestbookModelCopyWith<$Res> {
  __$GuestbookModelCopyWithImpl(this._self, this._then);

  final _GuestbookModel _self;
  final $Res Function(_GuestbookModel) _then;

/// Create a copy of GuestbookModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nama = freezed,Object? email = freezed,Object? message = freezed,}) {
  return _then(_GuestbookModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nama: freezed == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
