class LoginPageMainModel {
  String userName;
  String email;
  String password;
  String confirmedPassword;
  bool isError;
  String errorMessage;
  bool isLoading;
  bool isRegisterView;
  bool isSuccessfullySignedIn;
  bool isSuccessfullySignedUp;

  LoginPageMainModel(
      {required this.userName,
      required this.email,
      required this.password,
      required this.confirmedPassword,
      required this.isError,
      required this.errorMessage,
      required this.isLoading,
      required this.isRegisterView,
      required this.isSuccessfullySignedIn,
      required this.isSuccessfullySignedUp});
}
