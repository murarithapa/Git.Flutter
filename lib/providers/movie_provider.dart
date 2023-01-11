import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttersample/api.dart';
import 'package:fluttersample/models/movie.dart';
import 'package:fluttersample/services/movie_services.dart';
// import 'package:fluttersample/services/movie_service.dart';
// import '../domain/i_movie.dart';
import '../models/movie_state.dart';

final movieProvider = StateNotifierProvider.family<MovieNotifier, MovieState,Categories>((ref,Categories cat)
=> MovieNotifier(
    MovieState(errorMessage: '', isLoad: false,
      upcomingMovies: [],
      topRatedMovies: [],
      popularMovies: [],
    ),
  cat


));

class MovieNotifier extends StateNotifier<MovieState> {
  final Categories category;

  MovieNotifier(super.state,this.category){
    getMovieByCategory();
}

Future<void> getMovieByCategory() async {
  if (category == Categories.upcoming) {
    state = state.copyWith(isLoad: true, errorMessage: '');
    final response = await MovieService.getMovieCategory(
        apiPath: Api.upcomingMovie);
    response.fold((l) {
      state = state.copyWith(isLoad: false, errorMessage: l);
    }, (r) {
      state =
          state.copyWith(isLoad: false, errorMessage: '', upcomingMovies: r);
    });
  } else if (category == Categories.popular) {
    state = state.copyWith(isLoad: true, errorMessage: '');
    final response = await MovieService.getMovieCategory(
        apiPath: Api.popularMovie);
    response.fold((l) {
      state = state.copyWith(isLoad: false, errorMessage: l);
    }, (r) {
      state =
          state.copyWith(isLoad: false, errorMessage: '', popularMovies: r);
    });
  } else {
    state = state.copyWith(isLoad: true, errorMessage: '');
    final response = await MovieService.getMovieCategory(
        apiPath: Api.topRatedMovie);
    response.fold((l) {
      state = state.copyWith(isLoad: false, errorMessage: l);
    }, (r) {
      state =
          state.copyWith(isLoad: false, errorMessage: '', topRatedMovies: r);
    });
  }

}


}