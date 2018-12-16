class LoginState {
  String userName;
  String token;
  LoginState({this.token, this.userName});

  LoginState.initial({this.userName = '', this.token = ''});
}
