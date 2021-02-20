import 'dart:convert';

import 'package:hive/hive.dart';

part 'movie_rating.g.dart';

@HiveType(typeId: 1)
class MovieRating {
  @HiveField(0)
  final String source;
  @HiveField(1)
  final String value;

  MovieRating({this.source, this.value});

  factory MovieRating.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return MovieRating(
      source: map['source'] as String,
      value: map['value'] as String,
    );
  }

  factory MovieRating.fromJson(String source) =>
      MovieRating.fromMap(json.decode(source) as Map<String, dynamic>);
}
