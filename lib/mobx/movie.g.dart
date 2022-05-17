// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Movie on _Movie, Store {
  late final _$titleAtom = Atom(name: '_Movie.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$directorAtom = Atom(name: '_Movie.director', context: context);

  @override
  String get director {
    _$directorAtom.reportRead();
    return super.director;
  }

  @override
  set director(String value) {
    _$directorAtom.reportWrite(value, super.director, () {
      super.director = value;
    });
  }

  late final _$summaryAtom = Atom(name: '_Movie.summary', context: context);

  @override
  String get summary {
    _$summaryAtom.reportRead();
    return super.summary;
  }

  @override
  set summary(String value) {
    _$summaryAtom.reportWrite(value, super.summary, () {
      super.summary = value;
    });
  }

  late final _$genresAtom = Atom(name: '_Movie.genres', context: context);

  @override
  List<String> get genres {
    _$genresAtom.reportRead();
    return super.genres;
  }

  @override
  set genres(List<String> value) {
    _$genresAtom.reportWrite(value, super.genres, () {
      super.genres = value;
    });
  }

  @override
  String toString() {
    return '''
title: ${title},
director: ${director},
summary: ${summary},
genres: ${genres}
    ''';
  }
}
