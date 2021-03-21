import 'package:get/instance_manager.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'infrastructure/local_data_store/local_data_source.dart';
import 'models/movie_details.dart';
import 'models/movie_rating.dart';
import 'models/movie_summary.dart';
import 'models/search_result.dart';

Future<void> initDb() async {
  Hive
    ..initFlutter()
    ..registerAdapter(MovieDetailsAdapter())
    ..registerAdapter(MovieRatingAdapter())
    ..registerAdapter(MovieSummaryAdapter())
    ..registerAdapter(SearchResultAdapter());

  final Box searchBox = await Hive.openBox(SEARCH_RESULT_BOX);
  final Box movieDetailsBox = await Hive.openBox(MOVIE_DETAILS_BOX);

  Get.put<Box>(searchBox, tag: SEARCH_RESULT_BOX);
  Get.put<Box>(movieDetailsBox, tag: MOVIE_DETAILS_BOX);
}
