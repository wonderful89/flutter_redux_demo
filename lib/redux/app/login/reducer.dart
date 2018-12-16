import 'package:flutter_redux_demo/redux/app/login/action.dart';
import 'package:flutter_redux_demo/redux/app/login/state.dart';
import 'package:redux/redux.dart';

//LoginState loginReducer(LoginState state, dynamic action) {
//  return new LoginState(
//    loginState: registerLoginReducer(state.loginState, action),
//    commonState: commonReducer(state.commonState, action),
//  );
//}

final loginReducer = combineReducers<LoginState>([
  TypedReducer<LoginState, LoginAction>(_login),
  TypedReducer<LoginState, LogoutAction>(_logout),
]);

LoginState _login(LoginState state, LoginAction action) {
  return state;
}

LoginState _logout(LoginState state, LogoutAction action) {
  return state;
}
