import 'package:flutter_redux_demo/redux/app/login/state.dart';

LoginState loginReducer(LoginState state, dynamic action) {
  return new LoginState(
    loginState: registerLoginReducer(state.loginState, action),
    commonState: commonReducer(state.commonState, action),
  );
}
