import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_tut/redux/reducers.dart';
import 'package:redux_tut/redux/store.dart';

import 'screens/home_screen.dart';

void main() {
  Store<AppState> _store =
      Store<AppState>(reducers, initialState: AppState.initial());

  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store store;

  const MyApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
