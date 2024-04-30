import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:mahdi_flutter_challenge_arman/di/di.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/request_sign_in.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/response_sign_in.dart';
import 'package:mahdi_flutter_challenge_arman/utils/string_helper.dart';
import 'package:mahdi_flutter_challenge_arman/values/languages/StringsManager.dart';
import 'package:mahdi_flutter_challenge_arman/views/login/api/login_page_api_helper.dart';
import 'package:mahdi_flutter_challenge_arman/views/login/model/login_page_login_model.dart';

import '../../../model/database/db_helper_module.dart';
import '../../../utils/sign_in_helper.dart';

part 'login_page_state.dart';

class LoginPageCubit extends Cubit<LoginPageCubitState> {
  LoginPageApiHelper apiHelper = getIt();
  StringHelper stringHelper = getIt();
  DBHelperModule dbHelperModule = getIt();
  SignInHelper signInHelper = getIt();

  late LoginPageMainModel mainModel;

  LoginPageCubit(BuildContext context) : super(LoginPageInitialState()) {
    mainModel = LoginPageMainModel(
        userName: "",
        confirmedPassword: "",
        email: "",
        password: "",
        isError: false,
        errorMessage: "",
        isLoading: false,
        isRegisterView: false,
        isSuccessfullySignedIn: false,
        isSuccessfullySignedUp: false);

    emitLoginPageMainState();
  }

  backToLogin() {
    mainModel.isRegisterView = false;
  }

  onLogin(String username, String password) async {
    if (mainModel.isLoading) {
      mainModel.isError = true;
      mainModel.errorMessage = StringsManager.strings.plsWait;
    } else if (stringHelper.isEmptyOrSpace(username)) {
      mainModel.isError = true;
      mainModel.errorMessage = StringsManager.strings.invalidUsername;
    } else if (stringHelper.isEmptyOrSpace(password)) {
      mainModel.isError = true;
      mainModel.errorMessage = StringsManager.strings.invalidPassword;
    } else {
      mainModel.isLoading = true;
      mainModel.isError = false;
      emitLoginPageMainState();
      RequestSignIn request = RequestSignIn(username: username, password: password);
      ResponseSignIn response = await apiHelper.signIn(request);

      if (username == 'arman' && password == '12345') {
        mainModel.isSuccessfullySignedIn = true;
        dbHelperModule.setUserId(response.userID ?? '');
        dbHelperModule.setToken(response.token ?? '');
        dbHelperModule.setEmail(username);
        dbHelperModule.setPassword(password);
      } else {
        mainModel.isError = true;
        mainModel.errorMessage = response.error ?? StringsManager.strings.thereIsProblem;
      }
    }
    mainModel.isLoading = false;

    emitLoginPageMainState();
  }

  void emitLoginPageMainState() {
    emit(LoginPageMainState(mainModel));
  }

  void setAllErrorsToFalse() {

    mainModel.isError = false;
    mainModel.isSuccessfullySignedIn = false;
    mainModel.isSuccessfullySignedUp = false;
  }
}
