import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../api_key.dart';
import '../../models/movie_details.dart';
import '../../models/search_result.dart';
import 'remote_data_interface.dart';

const String baseUrl = 'http://www.omdbapi.com/?apikey=$API_KEY&';

class RemoteDataSource implements RemoteDataInterface {
  final http.Client client;

  RemoteDataSource(this.client);

  @override
  Future<SearchResult> searchMovie(String title, [int page = 1]) async {
    print('searchMovie -- RemoteDataSource');
    final response = await client.get(_buildSearchURL(title, page));

    if (response.statusCode != 200) throw Exception('Server Error');

    return SearchResult.fromJson(
        title, json.decode(response.body) as Map<String, dynamic>, page);
  }

  @override
  Future<MovieDetails> getMovieDetails(String id) async {
    print('getMovieDetails -- RemoteDataSource');
    final response = await client.get('$baseUrl&i=$id');

    if (response.statusCode != 200) throw Exception('Server Error');

    return MovieDetails.fromJson(response.body);
  }
}

String _buildSearchURL(String title, int page) {
  String returnString = baseUrl;
  returnString += 's=$title';
  if (page != 1) returnString += '&page=$page';

  return returnString;
}
