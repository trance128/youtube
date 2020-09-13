import 'actions.dart';
import 'store.dart';

AppState reducers(AppState prevState, dynamic action) {
  print("-------------");
  print("In the reducer");

  if (action is UpdateKmCleaned) {
    print(action);
    return AppState.copyWith(prev: prevState, km: action.payload);
  } else if (action is UpdateMiles) {
    print(action);
    return AppState.copyWith(prev: prevState, miles: action.payload);
  } else {
    return AppState(miles: prevState.miles, km: prevState.km);
  }
}