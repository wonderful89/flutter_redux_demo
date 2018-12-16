import 'package:flutter_redux_demo/redux/app/state.dart';

AppState appReducer(AppState state, dynamic action) {
  return new AppState(
    loginState: registerLoginReducer(state.loginState, action),
    commonState: commonReducer(state.commonState, action),
  );
}
