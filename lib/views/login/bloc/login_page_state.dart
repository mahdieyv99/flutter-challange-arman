part of 'login_page_cubit.dart';

abstract class LoginPageCubitState {}

class LoginPageInitialState extends LoginPageCubitState {}

class LoginPageMainState extends LoginPageCubitState {
  LoginPageMainModel mainModel;

  LoginPageMainState(this.mainModel);
}

