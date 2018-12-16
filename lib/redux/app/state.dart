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

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AppState && runtimeType == other.runtimeType && loginState == other.loginState && commonState == other.commonState;

  @override
  int get hashCode => loginState.hashCode ^ commonState.hashCode;
}
