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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetch value)?  fetch,TResult Function( _ToggleQuestion value)?  toggleQuestion,TResult Function( _Submit value)?  submit,TResult Function( _DownloadPdf value)?  downloadPdf,TResult Function( _OpenPdf value)?  openPdf,TResult Function( _Reset value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _ToggleQuestion() when toggleQuestion != null:
return toggleQuestion(_that);case _Submit() when submit != null:
return submit(_that);case _DownloadPdf() when downloadPdf != null:
return downloadPdf(_that);case _OpenPdf() when openPdf != null:
return openPdf(_that);case _Reset() when reset != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetch value)  fetch,required TResult Function( _ToggleQuestion value)  toggleQuestion,required TResult Function( _Submit value)  submit,required TResult Function( _DownloadPdf value)  downloadPdf,required TResult Function( _OpenPdf value)  openPdf,required TResult Function( _Reset value)  reset,}){
final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that);case _ToggleQuestion():
return toggleQuestion(_that);case _Submit():
return submit(_that);case _DownloadPdf():
return downloadPdf(_that);case _OpenPdf():
return openPdf(_that);case _Reset():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetch value)?  fetch,TResult? Function( _ToggleQuestion value)?  toggleQuestion,TResult? Function( _Submit value)?  submit,TResult? Function( _DownloadPdf value)?  downloadPdf,TResult? Function( _OpenPdf value)?  openPdf,TResult? Function( _Reset value)?  reset,}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _ToggleQuestion() when toggleQuestion != null:
return toggleQuestion(_that);case _Submit() when submit != null:
return submit(_that);case _DownloadPdf() when downloadPdf != null:
return downloadPdf(_that);case _OpenPdf() when openPdf != null:
return openPdf(_that);case _Reset() when reset != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetch,TResult Function( String questionId)?  toggleQuestion,TResult Function( String idUser)?  submit,TResult Function( int riwayatId)?  downloadPdf,TResult Function( int riwayatId)?  openPdf,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch();case _ToggleQuestion() when toggleQuestion != null:
return toggleQuestion(_that.questionId);case _Submit() when submit != null:
return submit(_that.idUser);case _DownloadPdf() when downloadPdf != null:
return downloadPdf(_that.riwayatId);case _OpenPdf() when openPdf != null:
return openPdf(_that.riwayatId);case _Reset() when reset != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetch,required TResult Function( String questionId)  toggleQuestion,required TResult Function( String idUser)  submit,required TResult Function( int riwayatId)  downloadPdf,required TResult Function( int riwayatId)  openPdf,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case _Fetch():
return fetch();case _ToggleQuestion():
return toggleQuestion(_that.questionId);case _Submit():
return submit(_that.idUser);case _DownloadPdf():
return downloadPdf(_that.riwayatId);case _OpenPdf():
return openPdf(_that.riwayatId);case _Reset():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetch,TResult? Function( String questionId)?  toggleQuestion,TResult? Function( String idUser)?  submit,TResult? Function( int riwayatId)?  downloadPdf,TResult? Function( int riwayatId)?  openPdf,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch();case _ToggleQuestion() when toggleQuestion != null:
return toggleQuestion(_that.questionId);case _Submit() when submit != null:
return submit(_that.idUser);case _DownloadPdf() when downloadPdf != null:
return downloadPdf(_that.riwayatId);case _OpenPdf() when openPdf != null:
return openPdf(_that.riwayatId);case _Reset() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class _Fetch implements ConsultationEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConsultationEvent.fetch()';
}


}




/// @nodoc


class _ToggleQuestion implements ConsultationEvent {
  const _ToggleQuestion(this.questionId);
  

 final  String questionId;

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
 String questionId
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
as String,
  ));
}


}

/// @nodoc


class _Submit implements ConsultationEvent {
  const _Submit({required this.idUser});
  

 final  String idUser;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitCopyWith<_Submit> get copyWith => __$SubmitCopyWithImpl<_Submit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submit&&(identical(other.idUser, idUser) || other.idUser == idUser));
}


@override
int get hashCode => Object.hash(runtimeType,idUser);

@override
String toString() {
  return 'ConsultationEvent.submit(idUser: $idUser)';
}


}

/// @nodoc
abstract mixin class _$SubmitCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) _then) = __$SubmitCopyWithImpl;
@useResult
$Res call({
 String idUser
});




}
/// @nodoc
class __$SubmitCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(this._self, this._then);

  final _Submit _self;
  final $Res Function(_Submit) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idUser = null,}) {
  return _then(_Submit(
idUser: null == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DownloadPdf implements ConsultationEvent {
  const _DownloadPdf({required this.riwayatId});
  

 final  int riwayatId;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadPdfCopyWith<_DownloadPdf> get copyWith => __$DownloadPdfCopyWithImpl<_DownloadPdf>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadPdf&&(identical(other.riwayatId, riwayatId) || other.riwayatId == riwayatId));
}


@override
int get hashCode => Object.hash(runtimeType,riwayatId);

@override
String toString() {
  return 'ConsultationEvent.downloadPdf(riwayatId: $riwayatId)';
}


}

/// @nodoc
abstract mixin class _$DownloadPdfCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory _$DownloadPdfCopyWith(_DownloadPdf value, $Res Function(_DownloadPdf) _then) = __$DownloadPdfCopyWithImpl;
@useResult
$Res call({
 int riwayatId
});




}
/// @nodoc
class __$DownloadPdfCopyWithImpl<$Res>
    implements _$DownloadPdfCopyWith<$Res> {
  __$DownloadPdfCopyWithImpl(this._self, this._then);

  final _DownloadPdf _self;
  final $Res Function(_DownloadPdf) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? riwayatId = null,}) {
  return _then(_DownloadPdf(
riwayatId: null == riwayatId ? _self.riwayatId : riwayatId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _OpenPdf implements ConsultationEvent {
  const _OpenPdf({required this.riwayatId});
  

 final  int riwayatId;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenPdfCopyWith<_OpenPdf> get copyWith => __$OpenPdfCopyWithImpl<_OpenPdf>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenPdf&&(identical(other.riwayatId, riwayatId) || other.riwayatId == riwayatId));
}


@override
int get hashCode => Object.hash(runtimeType,riwayatId);

@override
String toString() {
  return 'ConsultationEvent.openPdf(riwayatId: $riwayatId)';
}


}

/// @nodoc
abstract mixin class _$OpenPdfCopyWith<$Res> implements $ConsultationEventCopyWith<$Res> {
  factory _$OpenPdfCopyWith(_OpenPdf value, $Res Function(_OpenPdf) _then) = __$OpenPdfCopyWithImpl;
@useResult
$Res call({
 int riwayatId
});




}
/// @nodoc
class __$OpenPdfCopyWithImpl<$Res>
    implements _$OpenPdfCopyWith<$Res> {
  __$OpenPdfCopyWithImpl(this._self, this._then);

  final _OpenPdf _self;
  final $Res Function(_OpenPdf) _then;

/// Create a copy of ConsultationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? riwayatId = null,}) {
  return _then(_OpenPdf(
riwayatId: null == riwayatId ? _self.riwayatId : riwayatId // ignore: cast_nullable_to_non_nullable
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

 ConsultationStatus get status; List<IndicatorModel> get indicators; List<String> get selectedQuestionIds; String get error; DiagnosisResponseModel? get diagnosis; String? get pdfUrl; String? get pdfPath;
/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConsultationStateCopyWith<ConsultationState> get copyWith => _$ConsultationStateCopyWithImpl<ConsultationState>(this as ConsultationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConsultationState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.indicators, indicators)&&const DeepCollectionEquality().equals(other.selectedQuestionIds, selectedQuestionIds)&&(identical(other.error, error) || other.error == error)&&(identical(other.diagnosis, diagnosis) || other.diagnosis == diagnosis)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&(identical(other.pdfPath, pdfPath) || other.pdfPath == pdfPath));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(indicators),const DeepCollectionEquality().hash(selectedQuestionIds),error,diagnosis,pdfUrl,pdfPath);

@override
String toString() {
  return 'ConsultationState(status: $status, indicators: $indicators, selectedQuestionIds: $selectedQuestionIds, error: $error, diagnosis: $diagnosis, pdfUrl: $pdfUrl, pdfPath: $pdfPath)';
}


}

/// @nodoc
abstract mixin class $ConsultationStateCopyWith<$Res>  {
  factory $ConsultationStateCopyWith(ConsultationState value, $Res Function(ConsultationState) _then) = _$ConsultationStateCopyWithImpl;
@useResult
$Res call({
 ConsultationStatus status, List<IndicatorModel> indicators, List<String> selectedQuestionIds, String error, DiagnosisResponseModel? diagnosis, String? pdfUrl, String? pdfPath
});


$DiagnosisResponseModelCopyWith<$Res>? get diagnosis;

}
/// @nodoc
class _$ConsultationStateCopyWithImpl<$Res>
    implements $ConsultationStateCopyWith<$Res> {
  _$ConsultationStateCopyWithImpl(this._self, this._then);

  final ConsultationState _self;
  final $Res Function(ConsultationState) _then;

/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? indicators = null,Object? selectedQuestionIds = null,Object? error = null,Object? diagnosis = freezed,Object? pdfUrl = freezed,Object? pdfPath = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ConsultationStatus,indicators: null == indicators ? _self.indicators : indicators // ignore: cast_nullable_to_non_nullable
as List<IndicatorModel>,selectedQuestionIds: null == selectedQuestionIds ? _self.selectedQuestionIds : selectedQuestionIds // ignore: cast_nullable_to_non_nullable
as List<String>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,diagnosis: freezed == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as DiagnosisResponseModel?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String?,pdfPath: freezed == pdfPath ? _self.pdfPath : pdfPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisResponseModelCopyWith<$Res>? get diagnosis {
    if (_self.diagnosis == null) {
    return null;
  }

  return $DiagnosisResponseModelCopyWith<$Res>(_self.diagnosis!, (value) {
    return _then(_self.copyWith(diagnosis: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ConsultationStatus status,  List<IndicatorModel> indicators,  List<String> selectedQuestionIds,  String error,  DiagnosisResponseModel? diagnosis,  String? pdfUrl,  String? pdfPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConsultationState() when $default != null:
return $default(_that.status,_that.indicators,_that.selectedQuestionIds,_that.error,_that.diagnosis,_that.pdfUrl,_that.pdfPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ConsultationStatus status,  List<IndicatorModel> indicators,  List<String> selectedQuestionIds,  String error,  DiagnosisResponseModel? diagnosis,  String? pdfUrl,  String? pdfPath)  $default,) {final _that = this;
switch (_that) {
case _ConsultationState():
return $default(_that.status,_that.indicators,_that.selectedQuestionIds,_that.error,_that.diagnosis,_that.pdfUrl,_that.pdfPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ConsultationStatus status,  List<IndicatorModel> indicators,  List<String> selectedQuestionIds,  String error,  DiagnosisResponseModel? diagnosis,  String? pdfUrl,  String? pdfPath)?  $default,) {final _that = this;
switch (_that) {
case _ConsultationState() when $default != null:
return $default(_that.status,_that.indicators,_that.selectedQuestionIds,_that.error,_that.diagnosis,_that.pdfUrl,_that.pdfPath);case _:
  return null;

}
}

}

/// @nodoc


class _ConsultationState implements ConsultationState {
  const _ConsultationState({this.status = ConsultationStatus.initial, final  List<IndicatorModel> indicators = const [], final  List<String> selectedQuestionIds = const [], this.error = '', this.diagnosis = null, this.pdfUrl, this.pdfPath = null}): _indicators = indicators,_selectedQuestionIds = selectedQuestionIds;
  

@override@JsonKey() final  ConsultationStatus status;
 final  List<IndicatorModel> _indicators;
@override@JsonKey() List<IndicatorModel> get indicators {
  if (_indicators is EqualUnmodifiableListView) return _indicators;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_indicators);
}

 final  List<String> _selectedQuestionIds;
@override@JsonKey() List<String> get selectedQuestionIds {
  if (_selectedQuestionIds is EqualUnmodifiableListView) return _selectedQuestionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedQuestionIds);
}

@override@JsonKey() final  String error;
@override@JsonKey() final  DiagnosisResponseModel? diagnosis;
@override final  String? pdfUrl;
@override@JsonKey() final  String? pdfPath;

/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConsultationStateCopyWith<_ConsultationState> get copyWith => __$ConsultationStateCopyWithImpl<_ConsultationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConsultationState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._indicators, _indicators)&&const DeepCollectionEquality().equals(other._selectedQuestionIds, _selectedQuestionIds)&&(identical(other.error, error) || other.error == error)&&(identical(other.diagnosis, diagnosis) || other.diagnosis == diagnosis)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&(identical(other.pdfPath, pdfPath) || other.pdfPath == pdfPath));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_indicators),const DeepCollectionEquality().hash(_selectedQuestionIds),error,diagnosis,pdfUrl,pdfPath);

@override
String toString() {
  return 'ConsultationState(status: $status, indicators: $indicators, selectedQuestionIds: $selectedQuestionIds, error: $error, diagnosis: $diagnosis, pdfUrl: $pdfUrl, pdfPath: $pdfPath)';
}


}

/// @nodoc
abstract mixin class _$ConsultationStateCopyWith<$Res> implements $ConsultationStateCopyWith<$Res> {
  factory _$ConsultationStateCopyWith(_ConsultationState value, $Res Function(_ConsultationState) _then) = __$ConsultationStateCopyWithImpl;
@override @useResult
$Res call({
 ConsultationStatus status, List<IndicatorModel> indicators, List<String> selectedQuestionIds, String error, DiagnosisResponseModel? diagnosis, String? pdfUrl, String? pdfPath
});


@override $DiagnosisResponseModelCopyWith<$Res>? get diagnosis;

}
/// @nodoc
class __$ConsultationStateCopyWithImpl<$Res>
    implements _$ConsultationStateCopyWith<$Res> {
  __$ConsultationStateCopyWithImpl(this._self, this._then);

  final _ConsultationState _self;
  final $Res Function(_ConsultationState) _then;

/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? indicators = null,Object? selectedQuestionIds = null,Object? error = null,Object? diagnosis = freezed,Object? pdfUrl = freezed,Object? pdfPath = freezed,}) {
  return _then(_ConsultationState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ConsultationStatus,indicators: null == indicators ? _self._indicators : indicators // ignore: cast_nullable_to_non_nullable
as List<IndicatorModel>,selectedQuestionIds: null == selectedQuestionIds ? _self._selectedQuestionIds : selectedQuestionIds // ignore: cast_nullable_to_non_nullable
as List<String>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,diagnosis: freezed == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as DiagnosisResponseModel?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String?,pdfPath: freezed == pdfPath ? _self.pdfPath : pdfPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ConsultationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisResponseModelCopyWith<$Res>? get diagnosis {
    if (_self.diagnosis == null) {
    return null;
  }

  return $DiagnosisResponseModelCopyWith<$Res>(_self.diagnosis!, (value) {
    return _then(_self.copyWith(diagnosis: value));
  });
}
}

// dart format on
