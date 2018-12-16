import 'package:flutter_redux_demo/redux/app/common/state.dart';
import 'package:flutter_redux_demo/redux/app/login/state.dart';

class AppState {
  LoginState loginState;
  CommonState commonState;
  AppState({this.loginState, this.commonState});

  factory AppState.initial() {
    return new AppState(
//      this.commonState = CommonState.initial(),
        );
  }
}
