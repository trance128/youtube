import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../infrastructure/local_data_store/local_data_interface.dart';
import '../infrastructure/remote_data_store/remote_data_interface.dart';
import '../models/movie_details.dart';
import '../models/search_result.dart';

class SearchController extends GetxController {
  final LocalDataInterface _localDataInterface = Get.find<LocalDataInterface>();
  final RemoteDataInterface _remoteDataInterface =
      Get.find<RemoteDataInterface>();

  SearchController();

  Rx<SearchResult> searchResult = SearchResult().obs;
  Rx<MovieDetails> movieDetails = MovieDetails().obs;

  TextEditingController titleTextController = TextEditingController();

  Future<void> searchMovie({int page = 1}) async {
    print('searchMovie || SearchController');
    SearchResult result;

    final String title = titleTextController.text;

    print(title);

    result = _localDataInterface.searchMovie(title, page);

    // if (result == null) ...
    result ??= await _remoteDataInterface.searchMovie(title, page);

    searchResult.value = result;

    print('--------');
    print('searchResult title is ${searchResult.value.title}');
    print('searchResult totalResults is ${searchResult.value.totalResults}');
  }

  Future<void> getMovieDetails({String id}) async {
    print('getMovieDetails || SearchController');
    MovieDetails details;

    details = _localDataInterface.getMovieDetails(id);

    details ??= await _remoteDataInterface.getMovieDetails(id);

    movieDetails.value = details;
  }
}
