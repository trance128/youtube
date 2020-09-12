import 'actions.dart';
import 'store.dart';

AppState reducers(AppState prevState, dynamic action) {
  AppState newState;

  if (action is UpdateKm) {
    newState = AppState.copyWith(prev: prevState, km: action.payload);
  } else if (action is Convert) {
    print(action);
    //! THE FOLLOW CODE BELONGS IN MIDDLEWARE
    //! NOT IN REDUCERS!!
    double kmAsDouble = double.parse(prevState.km);
    double milesAsDouble = kmAsDouble * 0.621371;

    print(milesAsDouble);

    newState = AppState.copyWith(prev: prevState, miles: milesAsDouble.toString());
  }

  return newState;
}