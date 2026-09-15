import 'package:edwres_app/data/repository/entrepreneurship_repository.dart';
import 'package:edwres_app/models/entrepreneurship/entrepreneurship_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entrepreneurship_event.dart';
part 'entrepreneurship_state.dart';
part 'entrepreneurship_bloc.freezed.dart';

class EntrepreneurshipBloc
    extends Bloc<EntrepreneurshipEvent, EntrepreneurshipState> {
  final EntrepreneurshipRepository _repository;

  EntrepreneurshipBloc(this._repository)
    : super(const EntrepreneurshipState()) {
    on<_Fetch>(_onFetch);
  }

  Future<void> _onFetch(
    _Fetch event,
    Emitter<EntrepreneurshipState> emit,
  ) async {
    print('════════════════════════════════════════');
    print('[ENTREPRENEURSHIP] FETCH START');

    emit(
      state.copyWith(status: EntrepreneurshipStateStatus.loading, error: ''),
    );

    try {
      final data = await _repository.getEntrepreneurship();

      emit(
        state.copyWith(
          status: EntrepreneurshipStateStatus.loaded,
          data: data,
          error: '',
        ),
      );

      print(
        '[ENTREPRENEURSHIP] DATA LOADED: '
        '${data.length} items',
      );
      print('════════════════════════════════════════');
    } catch (error) {
      emit(
        state.copyWith(
          status: EntrepreneurshipStateStatus.error,
          error: error.toString(),
        ),
      );

      print('[ENTREPRENEURSHIP] FETCH FAILED');
      print('[ENTREPRENEURSHIP] ERROR: $error');
      print('════════════════════════════════════════');
    }
  }
}
