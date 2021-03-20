import 'package:get/get.dart';

import '../infrastructure/local_data_store/local_data_interface.dart';
import '../infrastructure/remote_data_store/remote_data_interface.dart';
import '../models/movie_details.dart';
import '../models/search_result.dart';

class State extends GetxController {
  final LocalDataInterface _localDataInterface = Get.find<LocalDataInterface>();
  final RemoteDataInterface _remoteDataInterface =
      Get.find<RemoteDataInterface>();

  State();

  RxString title = ''.obs;

  Rx<SearchResult> searchResult = SearchResult().obs;
  Rx<MovieDetails> movieDetails = MovieDetails().obs;

  Future<void> searchMovie({String title, int page = 1}) async {
    SearchResult result;

    result = _localDataInterface.searchMovie(title, page);

    // if (result == null) ...
    result ??= await _remoteDataInterface.searchMovie(title, page);

    searchResult.value = result;
  }

  Future<void> getMovieDetails({String id}) async {
    MovieDetails details;

    details = _localDataInterface.getMovieDetails(id);

    details ??= await _remoteDataInterface.getMovieDetails(id);

    movieDetails.value = details;
  }
}
