import 'package:flutter/material.dart';
import 'package:flutter_redux_demo/redux/app/action.dart';
import 'package:flutter_redux_demo/redux/app/state.dart';
import 'package:flutter_redux_demo/redux/store.dart';
import 'package:redux/redux.dart';

void main() async {
  Store<AppState> store = await createStore();
  store.dispatch(new EnterForegroundAction());

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(
          title: Text('flutter redux demo'),
        ),
        body: new Container(),
      ),
    );
  }
}
