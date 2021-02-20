import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:movie_browser/models/movie_rating.dart';

part 'movie_details.g.dart';

@HiveType(typeId: 0)
class MovieDetails {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String year;
  @HiveField(2)
  final String rated;
  @HiveField(3)
  final String released;
  @HiveField(4)
  final String runtime;
  @HiveField(5)
  final String genre;
  @HiveField(6)
  final String director;
  @HiveField(7)
  final String writer;
  @HiveField(8)
  final String actors;
  @HiveField(9)
  final String plot;
  @HiveField(10)
  final String language;
  @HiveField(11)
  final String country;
  @HiveField(12)
  final String awards;
  @HiveField(13)
  final String posterUrl;
  @HiveField(14)
  final List<MovieRating> ratings;
  @HiveField(15)
  final String metascore;
  @HiveField(16)
  final String imdbRating;
  @HiveField(17)
  final String imdbVotes;
  @HiveField(18)
  final String imdbmId;
  @HiveField(19)
  final String type;
  @HiveField(20)
  final String dvd;
  @HiveField(21)
  final String boxOffice;
  @HiveField(22)
  final String production;
  @HiveField(23)
  final String website;
  @HiveField(24)
  final bool response;

  MovieDetails({
    this.title,
    this.year,
    this.rated,
    this.released,
    this.runtime,
    this.genre,
    this.director,
    this.writer,
    this.actors,
    this.plot,
    this.language,
    this.country,
    this.awards,
    this.posterUrl,
    this.ratings,
    this.metascore,
    this.imdbRating,
    this.imdbVotes,
    this.imdbmId,
    this.type,
    this.dvd,
    this.boxOffice,
    this.production,
    this.website,
    this.response,
  });

  factory MovieDetails.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return MovieDetails(
      title: map['Title'] as String ?? '',
      year: map['Year'] as String ?? '',
      rated: map['Rated'] as String ?? '',
      released: map['Released'] as String ?? '',
      runtime: map['Runtime'] as String ?? '',
      genre: map['Genre'] as String ?? '',
      director: map['Director'] as String ?? '',
      writer: map['Writer'] as String ?? '',
      actors: map['Actors'] as String ?? '',
      plot: map['Plot'] as String ?? '',
      language: map['Language'] as String ?? '',
      country: map['Country'] as String ?? '',
      awards: map['Awards'] as String ?? '',
      posterUrl: map['PosterUrl'] as String ?? '',
      ratings: List<MovieRating>.from(map['Ratings']
                  ?.map((x) => MovieRating.fromMap(x as Map<String, dynamic>))
              as Iterable<dynamic>) ??
          <MovieRating>[],
      metascore: map['Metascore'] as String ?? '',
      imdbRating: map['imdbRating'] as String ?? '',
      imdbVotes: map['imdbVotes'] as String ?? '',
      imdbmId: map['imdbmId'] as String ?? '',
      type: map['Type'] as String ?? '',
      dvd: map['Dvd'] as String ?? '',
      boxOffice: map['BoxOffice'] as String ?? '',
      production: map['Production'] as String ?? '',
      website: map['Website'] as String ?? '',
      response: map['Response'] as String == 'True',
    );
  }

  factory MovieDetails.fromJson(String source) =>
      MovieDetails.fromMap(json.decode(source) as Map<String, dynamic>);
}
