import 'package:flutter_redux_demo/redux/app/common/action.dart';
import 'package:flutter_redux_demo/redux/app/common/state.dart';
import 'package:redux/redux.dart';

//CommonState commonReducer(CommonState state, dynamic action) {
//  return new CommonState(
//    loginState: registerLoginReducer(state.loginState, action),
//    commonState: commonReducer(state.commonState, action),
//  );
//}

final commonReducer = combineReducers<CommonState>([
  TypedReducer<CommonState, FetchRequest1Action>(_fetch1),
  TypedReducer<CommonState, FetchRequest2Action>(_fetch2),
]);

CommonState _fetch1(CommonState state, FetchRequest1Action action) {
  print('_fetch1 ---------');
//  return state.copy2(request1ListInput: [1, 2, 3], testStrInput: '234'); // 不会通知
  return state.copy(
    request1List: [1, 2, 3],
  );
}

CommonState _fetch2(CommonState state, FetchRequest2Action action) {
  return state.copy(request2List: [1, 2, 3]);
}
