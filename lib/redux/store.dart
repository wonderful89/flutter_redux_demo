import 'dart:async';
import 'package:flutter_redux_demo/redux/app/middleware.dart';
import 'package:flutter_redux_demo/redux/app/state.dart';
import 'package:flutter_redux_demo/redux/app/reducer.dart';
import 'package:redux/redux.dart';

Future<Store<AppState>> createStore() async {
//  var serverApi = new TEServerApi();
//  var prefs = await SharedPreferences.getInstance();

  return new Store(
    appReducer,
    initialState: new AppState.initial(),
    distinct: true,
    middleware: createAppMiddleware(),
  );
}
