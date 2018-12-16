import 'package:flutter_redux_demo/redux/app/action.dart';
import 'package:flutter_redux_demo/redux/app/state.dart';
import 'package:flutter_redux_demo/redux/app/login/reducer.dart';
import 'package:flutter_redux_demo/redux/app/common/reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is EnterForegroundAction) {
    print('app reducer: EnterForegroundAction');
  }
  return new AppState(
    loginState: loginReducer(state.loginState, action),
    commonState: commonReducer(state.commonState, action),
  );
}
