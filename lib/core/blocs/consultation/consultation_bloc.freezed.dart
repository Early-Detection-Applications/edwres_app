// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConsultationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConsultationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConsultationEvent()';
}


}

/// @nodoc
class $ConsultationEventCopyWith<$Res>  {
$ConsultationEventCopyWith(ConsultationEvent _, $Res Function(ConsultationEvent) __);
}


/// Adds pattern-matching-related methods to [ConsultationEvent].
extension ConsultationEventPatterns on ConsultationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ToggleQuestion value)?  toggleQuestion,TResult Function( _Reset value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToggleQuestion() when toggleQuestion != null:
return toggleQuestion(_that);case _Reset() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ToggleQuestion value)  toggleQuestion,required TResult Function( _Reset value)  reset,}){
final _that = this;
switch (_that) {
case _ToggleQuestion():
return toggleQuestion(_that);case _Reset():
return reset(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ToggleQuestion value)?  toggleQuestion,TResult? Function( _Reset value)?  reset,}){
final _that = this;
switch (_that) {
case _ToggleQuestion() when toggleQuestion != null:
return toggleQuestion(_that);case _Reset() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int questionId)?  toggleQuestion,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToggleQuestion() when toggleQuestion != null:
return toggleQuestion(_that.questionId);case _Reset() when reset != null:
return reset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int questionId)  toggleQuestion,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case _ToggleQuestion():
return toggleQuestion(_that.questionId);case _Reset():
return reset();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int questionId)?  toggleQuestion,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case _ToggleQuestion() when toggleQuestion != null:
return toggleQuestion(_that.questionId);case _Reset() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class _ToggleQuestion implements ConsultationEvent {
  const _ToggleQuestion(this.questionId);
  

 final  int questionId;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleQuestionCopyWith<_ToggleQuestion> get copyWith => __$ToggleQuestionCopyWithImpl<_ToggleQuestion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleQuestion&&(identical(other.questionId, questionId) || other.questionId == questionId));
}


@override
int get hashCode => Object.hash(runtimeType,questionId);

@override
String toString() {
  return 'ConsultationEvent.toggleQuestion(questionId: $questionId)';
}


}

/// @nodoc
abstract mixin class _$ToggleQuestionCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory _$ToggleQuestionCopyWith(_ToggleQuestion value, $Res Function(_ToggleQuestion) _then) = __$ToggleQuestionCopyWithImpl;
@useResult
$Res call({
 int questionId
});




}
/// @nodoc
class __$ToggleQuestionCopyWithImpl<$Res>
    implements _$ToggleQuestionCopyWith<$Res> {
  __$ToggleQuestionCopyWithImpl(this._self, this._then);

  final _ToggleQuestion _self;
  final $Res Function(_ToggleQuestion) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? questionId = null,}) {
  return _then(_ToggleQuestion(
null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Reset implements ConsultationEvent {
  const _Reset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConsultationEvent.reset()';
}


}




/// @nodoc
mixin _$ConsultationState {

 List<int> get selectedQuestionIds;
/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConsultationStateCopyWith<ConsultationState> get copyWith => _$ConsultationStateCopyWithImpl<ConsultationState>(this as ConsultationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConsultationState&&const DeepCollectionEquality().equals(other.selectedQuestionIds, selectedQuestionIds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selectedQuestionIds));

@override
String toString() {
  return 'ConsultationState(selectedQuestionIds: $selectedQuestionIds)';
}


}

/// @nodoc
abstract mixin class $ConsultationStateCopyWith<$Res>  {
  factory $ConsultationStateCopyWith(ConsultationState value, $Res Function(ConsultationState) _then) = _$ConsultationStateCopyWithImpl;
@useResult
$Res call({
 List<int> selectedQuestionIds
});




}
/// @nodoc
class _$ConsultationStateCopyWithImpl<$Res>
    implements $ConsultationStateCopyWith<$Res> {
  _$ConsultationStateCopyWithImpl(this._self, this._then);

  final ConsultationState _self;
  final $Res Function(ConsultationState) _then;

/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedQuestionIds = null,}) {
  return _then(_self.copyWith(
selectedQuestionIds: null == selectedQuestionIds ? _self.selectedQuestionIds : selectedQuestionIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [ConsultationState].
extension ConsultationStatePatterns on ConsultationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConsultationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConsultationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConsultationState value)  $default,){
final _that = this;
switch (_that) {
case _ConsultationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConsultationState value)?  $default,){
final _that = this;
switch (_that) {
case _ConsultationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<int> selectedQuestionIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConsultationState() when $default != null:
return $default(_that.selectedQuestionIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<int> selectedQuestionIds)  $default,) {final _that = this;
switch (_that) {
case _ConsultationState():
return $default(_that.selectedQuestionIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<int> selectedQuestionIds)?  $default,) {final _that = this;
switch (_that) {
case _ConsultationState() when $default != null:
return $default(_that.selectedQuestionIds);case _:
  return null;

}
}

}

/// @nodoc


class _ConsultationState implements ConsultationState {
  const _ConsultationState({final  List<int> selectedQuestionIds = const <int>[]}): _selectedQuestionIds = selectedQuestionIds;
  

 final  List<int> _selectedQuestionIds;
@override@JsonKey() List<int> get selectedQuestionIds {
  if (_selectedQuestionIds is EqualUnmodifiableListView) return _selectedQuestionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedQuestionIds);
}


/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConsultationStateCopyWith<_ConsultationState> get copyWith => __$ConsultationStateCopyWithImpl<_ConsultationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConsultationState&&const DeepCollectionEquality().equals(other._selectedQuestionIds, _selectedQuestionIds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedQuestionIds));

@override
String toString() {
  return 'ConsultationState(selectedQuestionIds: $selectedQuestionIds)';
}


}

/// @nodoc
abstract mixin class _$ConsultationStateCopyWith<$Res> implements $ConsultationStateCopyWith<$Res> {
  factory _$ConsultationStateCopyWith(_ConsultationState value, $Res Function(_ConsultationState) _then) = __$ConsultationStateCopyWithImpl;
@override @useResult
$Res call({
 List<int> selectedQuestionIds
});




}
/// @nodoc
class __$ConsultationStateCopyWithImpl<$Res>
    implements _$ConsultationStateCopyWith<$Res> {
  __$ConsultationStateCopyWithImpl(this._self, this._then);

  final _ConsultationState _self;
  final $Res Function(_ConsultationState) _then;

/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedQuestionIds = null,}) {
  return _then(_ConsultationState(
selectedQuestionIds: null == selectedQuestionIds ? _self._selectedQuestionIds : selectedQuestionIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
