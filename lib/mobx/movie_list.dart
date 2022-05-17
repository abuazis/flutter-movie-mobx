import 'package:mobx/mobx.dart';

import 'movie.dart';

part 'movie_list.g.dart';

class MovieList = _MovieList with _$MovieList;

abstract class _MovieList with Store {
  @observable
  ObservableList<Movie> movies = ObservableList<Movie>();

  @action
  void addMovie({ 
    required String title, 
    required String director, 
    required String summary, 
    required List<String> genres 
  }) {
    final id = DateTime.now().millisecondsSinceEpoch;
    final movie = Movie(id, title, director, summary, genres);

    movies.add(movie);
  }

  @action
  void updateMovie(
    int id, { 
    String? title, 
    String? director, 
    String? summary, 
    List<String>? genres 
  }) {
    final movie = movies.singleWhere((element) => element.id == id);

    removeMovie(id);
    addMovie(
      title: title ?? movie.title, 
      director: director ?? movie.director, 
      summary: summary ?? movie.summary, 
      genres: genres ?? movie.genres
    );
  }

  @action
  void removeMovie(int id) {
    movies.removeWhere((element) => element.id == id);
  }
}