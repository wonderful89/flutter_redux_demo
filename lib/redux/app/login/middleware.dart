import 'package:flutter_redux_demo/redux/app/login/action.dart';
import 'package:flutter_redux_demo/redux/app/state.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createLoginMiddleware() {
  var list = new List<Middleware<AppState>>();
  list.addAll(<Middleware<AppState>>[
    TELoginMiddleware(),
  ]);

  return list;
}

class TELoginMiddleware extends MiddlewareClass<AppState> {
  TELoginMiddleware();

  @override
  Future<Null> call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is LogoutAction) {
    } else if (action is LoginAction) {}
  }
}
