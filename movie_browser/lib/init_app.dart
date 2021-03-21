import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart' as http;

import 'infrastructure/local_data_store/local_data_interface.dart';
import 'infrastructure/local_data_store/local_data_source.dart';
import 'infrastructure/remote_data_store/remote_data_interface.dart';
import 'infrastructure/remote_data_store/remote_data_source.dart';
import 'init_db.dart';
import 'presentation/search_controller.dart';

Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDb();

  final http.Client client = http.Client();

  final RemoteDataSource remoteDataSource = RemoteDataSource(client);
  Get.lazyPut<LocalDataInterface>(() => LocalDataSource());
  Get.put<RemoteDataInterface>(remoteDataSource, permanent: true);

  SearchController searchController = SearchController();
  Get.put<SearchController>(searchController, permanent: true);
}
