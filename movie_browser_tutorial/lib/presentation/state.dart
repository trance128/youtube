import 'package:get/get.dart';

import '../infrastructure/local_data_store/local_data_interface.dart';
import '../infrastructure/remote_data_store/remote_data_interface.dart';
import '../models/movie_details.dart';
import '../models/search_result.dart';

class State extends GetxController {
  final LocalDataInterface _localDataInterface;
  final RemoteDataInterface _remoteDataInterface;

  State(this._localDataInterface, this._remoteDataInterface,);

  RxString title = ''.obs;

  RxList<SearchResult> searchResult = <SearchResult>[].obs;
  Rx<MovieDetails> movieDetails = MovieDetails().obs;

  void searchMovie({String title, int page = 1}) {
    List<SearchResult> result;

    result = _localDataInterface.searchMovie(title, page);

    // if (result == null) ...
    result ??= _remoteDataInterface.searchMovie(title, page);

    searchResult.assignAll(result);
  }

  void getMovieDetails({String id}) {
    MovieDetails details;

    details = _localDataInterface.getMovieDetails(id);

    details ??= _remoteDataInterface.getMovieDetails(id);

    movieDetails.value = details;
  }
}