part of 'entrepreneurship_bloc.dart';

@freezed
abstract class EntrepreneurshipEvent with _$EntrepreneurshipEvent {
  const factory EntrepreneurshipEvent.fetch() = _Fetch;
}
