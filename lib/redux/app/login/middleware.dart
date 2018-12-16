import 'package:flutter_redux_demo/redux/app/state.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createAppMiddleware() {
  var list = new List<Middleware<AppState>>();

//  list.add(new LoggingMiddleware.printer());
  list.addAll(createRegisterLoginMiddleware());
  list.addAll(createCommonMiddleware());
  list.addAll(<Middleware<AppState>>[
    TEAppMiddleware(),
  ]);

  return list;
}

class TEAppMiddleware extends MiddlewareClass<AppState> {
  TEAppMiddleware();

  @override
  Future<Null> call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is TELogoutAction) {
      store.dispatch(new TEResetAppStateAction());
    }
  }
}
