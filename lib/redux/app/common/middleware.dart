import 'package:flutter_redux_demo/redux/app/action.dart';
import 'package:flutter_redux_demo/redux/app/common/action.dart';
import 'package:flutter_redux_demo/redux/app/state.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createCommonMiddleware() {
  var list = new List<Middleware<AppState>>();
  list.addAll(<Middleware<AppState>>[
    TECommonMiddleware(),
  ]);

  return list;
}

class TECommonMiddleware extends MiddlewareClass<AppState> {
  TECommonMiddleware();

  @override
  Future<Null> call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is FetchRequest1Action) {
    } else if (action is FetchRequest2Action) {}
    if (action is EnterForegroundAction) {
      print('EnterForegroundAction in common middleware');
    }
  }
}
