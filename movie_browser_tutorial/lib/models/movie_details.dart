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
  final String response;

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
}
