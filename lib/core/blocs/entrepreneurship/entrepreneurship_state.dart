part of 'entrepreneurship_bloc.dart';

enum EntrepreneurshipStateStatus {
  initial,
  loading,
  loaded,
  error;

  bool get isLoading => this == loading;
  bool get isLoaded => this == loaded;
}

@freezed
abstract class EntrepreneurshipState with _$EntrepreneurshipState {
  const factory EntrepreneurshipState({
    @Default(EntrepreneurshipStateStatus.initial)
    EntrepreneurshipStateStatus status,
    List<EntrepreneurshipModel>? data,
    @Default('') String error,
  }) = _EntrepreneurshipState;
}
