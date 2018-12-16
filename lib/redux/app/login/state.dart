class LoginState {
  String userName;
  String token;
  LoginState({this.token, this.userName});

  LoginState.initial({this.userName = '', this.token = ''});

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is LoginState && runtimeType == other.runtimeType && userName == other.userName && token == other.token;

  @override
  int get hashCode => userName.hashCode ^ token.hashCode;
}
