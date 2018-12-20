import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_demo/redux/app/action.dart';
import 'package:flutter_redux_demo/redux/app/common/action.dart';
import 'package:flutter_redux_demo/redux/app/state.dart';
import 'package:flutter_redux_demo/redux/store.dart';
import 'package:flutter_redux_demo/ui/home_page.dart';
import 'package:redux/redux.dart';

void main() async {
  Store<AppState> store = await createStore();
  store.dispatch(new InitAppStateAction());
  print('store = store');
  store.onChange.listen((AppState state) {
    print('stateX = ${state.commonState.request1List}');
  });

  return runApp(MyStoreApp(
    store: store,
    child: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Store<AppState> store = StoreProvider.of<AppState>(context);
//    store.dispatch(new EnterForegroundAction());

    Timer(new Duration(seconds: 3), () {
      store.dispatch(new FetchRequest1Action());
    });

    return new MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new StoreConnector<AppState, AppState>(
          builder: (context, state) {
            return new Scaffold(
              body: new Center(
                child: new Text('aa'),
              ),
            );
          },
          converter: (store) => store.state,
        ));
  }
}
