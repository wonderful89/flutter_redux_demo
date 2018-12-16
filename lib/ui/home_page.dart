import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_demo/redux/app/state.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, AppState>(
      distinct: true,
      converter: (store) => store.state,
      builder: (context, state) {
        print('state = $state');
        return new Container(
          child: new Scaffold(
            appBar: new AppBar(
              title: Text('flutter redux demo'),
            ),
            body: new Container(),
          ),
        );
      },
    );
  }
}
