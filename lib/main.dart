import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_demo/redux/app/action.dart';
import 'package:flutter_redux_demo/redux/app/state.dart';
import 'package:flutter_redux_demo/redux/store.dart';
import 'package:flutter_redux_demo/ui/home_page.dart';
import 'package:redux/redux.dart';

void main() async {
  Store<AppState> store = await createStore();
  print('store = store');
  return runApp(MyStoreApp(
    store: store,
    child: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Store<AppState> store = StoreProvider.of<AppState>(context);
    store.dispatch(new EnterForegroundAction());

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
