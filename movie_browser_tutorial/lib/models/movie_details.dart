import 'dart:convert';

import 'package:movie_browser_tutorial/models/movie_rating.dart';

class MovieDetails {
  final String title;
  final String year;
  final String rated;
  final String released;
  final String runtime;
  final String genre;
  final String director;
  final String writer;
  final String actors;
  final String plot;
  final String language;
  final String country;
  final String awards;
  final String posterUrl;
  final List<MovieRating> ratings;
  final String metascore;
  final String imdbRating;
  final String imdbVotes;
  final String imdbmId;
  final String type;
  final String dvd;
  final String boxOffice;
  final String production;
  final String website;
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
      actors: map['Actors']  as String ?? '',
      plot: map['Plot']  as String ?? '',
      language: map['Language']  as String ?? '',
      country: map['Country']  as String ?? '',
      awards: map['Awards']  as String ?? '',
      posterUrl: map['PosterUrl']  as String ?? '',
      ratings: List<MovieRating>.from(map['Ratings']?.map((x) => MovieRating.fromMap(x as Map<String, dynamic>)) as Iterable<dynamic> ) ?? <MovieRating>[],
      metascore: map['Metascore']  as String ?? '',
      imdbRating: map['imdbRating']  as String ?? '',
      imdbVotes: map['imdbVotes']  as String ?? '',
      imdbmId: map['imdbmId']  as String ?? '',
      type: map['Type']  as String ?? '',
      dvd: map['Dvd']  as String ?? '',
      boxOffice: map['BoxOffice']  as String ?? '',
      production: map['Production']  as String ?? '',
      website: map['Website']  as String ?? '',
      response: map['Response'] as String == 'True',
    );
  }

  factory MovieDetails.fromJson(String source) => MovieDetails.fromMap(json.decode(source) as Map<String, dynamic>);
}
