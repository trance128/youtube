import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../redux/actions.dart';
import '../redux/store.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StoreConnector<AppState, AppState>(
          converter: (store) => store.state,
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Km'),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Km',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (val) => StoreProvider.of<AppState>(context)
                      .dispatch(UpdateKm(val)),
                ),
              ),
              Text('Miles'),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(state.miles),
              ),
              RaisedButton(
                onPressed: () => StoreProvider.of<AppState>(context).dispatch(Convert()),
                child: Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
