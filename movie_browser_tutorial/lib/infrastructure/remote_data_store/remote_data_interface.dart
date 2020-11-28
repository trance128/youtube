import 'package:movie_browser_tutorial/models/movie_details.dart';
import 'package:movie_browser_tutorial/models/search_result.dart';

abstract class RemoteDataInterface {
  List<SearchResult> searchMovie(String title, int page);

  MovieDetails getMovieDetails(String id);
}