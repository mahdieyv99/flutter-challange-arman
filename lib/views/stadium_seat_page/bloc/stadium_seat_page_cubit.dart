import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:mahdi_flutter_challenge_arman/di/di.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/request_sign_in.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/response_sign_in.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/stadium_seat_page/response_get_map.dart';
import 'package:mahdi_flutter_challenge_arman/utils/string_helper.dart';
import 'package:mahdi_flutter_challenge_arman/values/languages/StringsManager.dart';
import 'package:mahdi_flutter_challenge_arman/views/login/api/login_page_api_helper.dart';
import 'package:mahdi_flutter_challenge_arman/views/stadium_seat_page/api/stadium_seat_page_api_helper.dart';
import 'package:mahdi_flutter_challenge_arman/views/stadium_seat_page/model/stadium_seat_page_model.dart';

import '../../../model/database/db_helper_module.dart';
import '../../../utils/sign_in_helper.dart';
import '../../../values/Constants.dart';

part 'stadium_seat_page_main_state.dart';

class StadiumSeatPageCubit extends Cubit<StadiumSeatPageCubitState> {
  StadiumSeatPageApiHelper apiHelper = getIt();
  LoginPageApiHelper signInHelper = getIt();

  late StadiumSeatPageMainModel mainModel;
  bool isNextPageAvailableArtwork = true;
  bool isNextPageAvailableSearch = true;
  bool isNextPageAvailableMuseum = true;

  String token = "";

  StadiumSeatPageCubit(BuildContext context) : super(StadiumSeatPageInitialState()) {
    mainModel = StadiumSeatPageMainModel(
      listMap: [],
      listSeatAvailableOnMap: [],
      isErrorGetData: false,
      errorMessage: ''
    );

    emitMainPageMainState();
    init();
  }

  void emitMainPageMainState() {
    emit(StadiumSeatPageMainState(mainModel));
  }

  void init() async {
    //token = await dbHelperModule.getToken();

    getMap();
  }

  // home ------------------------------------------------------------------------------------------------------------
  void setAllErrorsToFalse() {
    mainModel.isErrorGetData = false;
  }

  Future<void> getMap() async {
    emitMainPageMainState();
    ResponseGetMap response = await apiHelper.getMap();

    if (response.list != null) {
      mainModel.listMap = response.list!;
      emitMainPageMainState();
    } else if (response.errCode == 403 && response.error == Constants.errorAccessDenied) {
      RequestSignIn request = RequestSignIn(username: 'arman', password: '12345');
      ResponseSignIn signInResponse = await signInHelper.signIn(request);
      bool isSignInOk = true;
      if (isSignInOk) {
        getMap();
      }
    }
  }

  Future<void> buyTicket() async {
    emitMainPageMainState();
    ResponseGetMap response = await apiHelper.getMap();

    if (response.list != null) {
      mainModel.listMap = response.list!;
      emitMainPageMainState();
    } else if (response.errCode == 403 && response.error == Constants.errorAccessDenied) {
      RequestSignIn request = RequestSignIn(username: 'arman', password: '12345');
      ResponseSignIn signInResponse = await signInHelper.signIn(request);
      bool isSignInOk = true;
      if (isSignInOk) {
        getMap();
      }
    }
  }
}
