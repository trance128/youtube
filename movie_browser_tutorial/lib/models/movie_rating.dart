import 'dart:convert';

class MovieRating {
  final String source;
  final String value;

  MovieRating({this.source, this.value});

  factory MovieRating.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return MovieRating(
      source: map['source'] as String,
      value: map['value'] as String,
    );
  }

  factory MovieRating.fromJson(String source) => MovieRating.fromMap(json.decode(source) as Map<String, dynamic>);
}
