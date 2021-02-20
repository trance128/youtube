import '../../models/movie_details.dart';
import '../../models/search_result.dart';

abstract class RemoteDataInterface {
  Future<SearchResult> searchMovie(String title, int page);

  Future<MovieDetails> getMovieDetails(String id);
}

