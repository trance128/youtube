import 'package:movie_browser/models/movie_details.dart';
import 'package:movie_browser/models/search_result.dart';

abstract class LocalDataInterface {
  SearchResult searchMovie(String title, int page);
  Future<void> cacheSearchResult(SearchResult result);

  MovieDetails getMovieDetails(String id);
  Future<void> cacheMovieDetails(MovieDetails movieDetails);
}
