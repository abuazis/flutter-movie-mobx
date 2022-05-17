import 'package:mobx/mobx.dart';

part 'movie.g.dart';

class Movie = _Movie with _$Movie;

abstract class _Movie with Store {
  _Movie(this.id, this.title, this.director, this.summary, this.genres);

  @observable
  int id;

  @observable
  String title = '';

  @observable
  String director = '';

  @observable
  String summary = '';

  @observable
  List<String> genres = [];
}