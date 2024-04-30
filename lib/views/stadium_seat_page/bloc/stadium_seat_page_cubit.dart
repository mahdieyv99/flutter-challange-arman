import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:mahdi_flutter_challenge_arman/di/di.dart';
import 'package:mahdi_flutter_challenge_arman/utils/string_helper.dart';
import 'package:mahdi_flutter_challenge_arman/values/languages/StringsManager.dart';
import 'package:mahdi_flutter_challenge_arman/views/stadium_seat_page/api/stadium_seat_page_api_helper.dart';
import 'package:mahdi_flutter_challenge_arman/views/stadium_seat_page/model/stadium_seat_page_model.dart';

import '../../../model/database/db_helper_module.dart';
import '../../../utils/sign_in_helper.dart';
import '../../../values/Constants.dart';

part 'stadium_seat_page_main_state.dart';

class StadiumSeatPageCubit extends Cubit<StadiumSeatPageCubitState> {
  StadiumSeatPageApiHelper apiHelper = getIt();
  StringHelper stringHelper = getIt();
  DBHelperModule dbHelperModule = getIt();
  SignInHelper signInHelper = getIt();

  late StadiumSeatPageMainModel mainModel;
  bool isNextPageAvailableArtwork = true;
  bool isNextPageAvailableSearch = true;
  bool isNextPageAvailableMuseum = true;

  String token = "";

  StadiumSeatPageCubit(BuildContext context) : super(StadiumSeatPageInitialState()) {
    mainModel = StadiumSeatPageMainModel(
      resultByFilterUserProfileExpansionStatus: [],
      isLoadingGetArtworks: true,
      isLoadingGetArtworkUserProfile: false,
      isErrorGetData: false,
      errorMessage: "",
      selectedBottomNavigationIndex: 1,
      currentArtworksIndex: 0,
      currentPageArtwork: 1,
      currentPageSearch: 1,
      isLoadingGetSearch: false,
      isLoadingGetMoreSearch: false,
      isLoadingGetMuseum: false,
      filter: '',
      searchQuery: '',
      currentPageMuseum: 1,
    );

    emitMainPageMainState();
    init();
  }

  void emitMainPageMainState() {
    emit(StadiumSeatPageMainState(mainModel));
  }

  void init() async {
    token = await dbHelperModule.getToken();

    //getArtworks(true);
  }

  // home ------------------------------------------------------------------------------------------------------------
  void setAllErrorsToFalse() {
    mainModel.isErrorGetData = false;
  }

  /*void getMoreMuseums() {
    if (isNextPageAvailableMuseum) {
      mainModel.currentPageMuseum += 1;
      getMuseums();
    }
  }

  void setSelectedBottomNavigationIndex(int selectedBottomNavigationIndex) {
    mainModel.selectedBottomNavigationIndex = selectedBottomNavigationIndex;
    if (selectedBottomNavigationIndex == 3) {
      //search("", true);
    } else if (selectedBottomNavigationIndex == 2) {
      mainModel.museums!.clear();
      getMuseums();
    }
    emitMainPageMainState();
  }*/

  void setExpansionStatus(int index) {
    print('UserProfileCubit.setExpansionStatus');
    mainModel.resultByFilterUserProfileExpansionStatus[index] =
        !mainModel.resultByFilterUserProfileExpansionStatus[index];
    emitMainPageMainState();
  }

  int getExpandedCount() {
    int expandedCount = 0;

    mainModel.resultByFilterUserProfileExpansionStatus.forEach((element) {
      if (element) {
        expandedCount++;
      }
    });
    print('UserProfileCubit.getExpandedCount $expandedCount');
    return expandedCount;
  }
}
