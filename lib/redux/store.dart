import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_demo/redux/app/action.dart';
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

class MyStoreApp extends StatefulWidget {
  final Store<AppState> store;
  final Widget child;
  MyStoreApp({this.store, this.child});
  @override
  _MyStoreAppState createState() => _MyStoreAppState();
}

class _MyStoreAppState extends State<MyStoreApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.paused:
//        widget.store.dispatch(new ExitForegroundAction());
        break;
      case AppLifecycleState.resumed:
//        widget.store.dispatch(new EnterForegroundAction());
        break;
      default:
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // StoreProvider是一个 InheritedWidget，所以可以使用of获取store的值
    return new StoreProvider<AppState>(
      store: widget.store,
      child: widget.child,
    );
  }
}
