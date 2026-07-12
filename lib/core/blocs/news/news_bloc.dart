// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:edwres_app/data/data.dart';
import 'package:edwres_app/models/news/news.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _newsRepository;

  NewsBloc(this._newsRepository) : super(const NewsState()) {
    on<_Fetch>(_onFetch);
  }

  Future<void> _onFetch(event, Emitter<NewsState> emit) async {
    emit(state.copyWith(status: NewsStateStatus.loading, error: ''));

    try {
      final response = await _newsRepository.getNews();

      emit(state.copyWith(status: NewsStateStatus.loaded, data: response.data));
    } catch (e) {
      emit(state.copyWith(status: NewsStateStatus.error, error: e.toString()));
    }
  }
}
