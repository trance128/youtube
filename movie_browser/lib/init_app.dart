import 'package:get/instance_manager.dart';
import 'package:http/http.dart' as http;

import 'infrastructure/local_data_store/local_data_interface.dart';
import 'infrastructure/local_data_store/local_data_source.dart';
import 'infrastructure/remote_data_store/remote_data_interface.dart';
import 'infrastructure/remote_data_store/remote_data_source.dart';
import 'init_db.dart';
import 'presentation/state.dart';

Future<void> initApp() async {
  await initDb();

  final http.Client client = http.Client();

  final RemoteDataSource remoteDataSource = RemoteDataSource(client);
  Get.lazyPut<LocalDataInterface>(() => LocalDataSource());
  Get.put<RemoteDataInterface>(remoteDataSource, permanent: true);

  State state = State();
  Get.put<State>(state, permanent: true);
}
