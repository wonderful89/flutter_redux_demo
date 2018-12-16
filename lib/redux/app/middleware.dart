import 'package:flutter_redux_demo/redux/app/action.dart';
import 'package:flutter_redux_demo/redux/app/common/middleware.dart';
import 'package:flutter_redux_demo/redux/app/login/middleware.dart';
import 'package:flutter_redux_demo/redux/app/state.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createAppMiddleware() {
  var list = new List<Middleware<AppState>>();

//  list.add(new LoggingMiddleware());
  list.addAll(createLoginMiddleware());
  list.addAll(createCommonMiddleware());
  list.addAll(<Middleware<AppState>>[
    TEAppMiddleware(),
  ]);
  list.add(new LoggingMiddleware());
  list.add(new LoggingMiddleware2());

  return list;
}

class TEAppMiddleware extends MiddlewareClass<AppState> {
  TEAppMiddleware();

  @override
  Future<Null> call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is EnterForegroundAction) {
      print('EnterForegroundAction in app middleware');
    }
  }
}

class LoggingMiddleware extends MiddlewareClass<AppState> {
  LoggingMiddleware();

  @override
  Future<Null> call(Store<AppState> store, action, NextDispatcher next) async {
//    next(action);
    print('action = $action,next = $next');
//    next(action);
  }
}

class LoggingMiddleware2 extends MiddlewareClass<AppState> {
  LoggingMiddleware2();

  @override
  Future<Null> call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    print('log2: action = $action,next = $next');
//    next(action);
  }
}
