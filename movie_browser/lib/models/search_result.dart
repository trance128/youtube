import 'package:hive/hive.dart';

import 'movie_summary.dart';

part 'search_result.g.dart';

@HiveType(typeId: 3)
class SearchResult {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final int page;
  @HiveField(2)
  final int totalResults;
  @HiveField(3)
  final bool found;
  @HiveField(4)
  final List<MovieSummary> movieSummaries;

  SearchResult({
    this.title,
    this.page,
    this.totalResults,
    this.found,
    this.movieSummaries,
  });

  factory SearchResult.fromJson(
      String title, Map<String, dynamic> json, int page) {
    if ((json['Response'] ??= "False") == 'False') {
      SearchResult(
        found: false,
        title: title,
        page: page,
      );
    }

    final List<MovieSummary> movies = [];

    for (final result in json['Search']) {
      movies.add(
        MovieSummary(
          title: result['Title'] as String ?? '',
          year: result['Year'] as String ?? '1000',
          imdbID: result['imdbID'] as String ?? '',
          type: result['Type'] as String ?? '',
          posterUrl: result['Poster'] as String ?? '',
        ),
      );
    }

    return SearchResult(
      found: true,
      page: page,
      title: title,
      totalResults: json['totalResults'] as int,
      movieSummaries: movies,
    );
  }
}
