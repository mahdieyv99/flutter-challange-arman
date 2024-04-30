import 'package:debounce_throttle/debounce_throttle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahdi_flutter_challenge_arman/di/di.dart';
import 'package:mahdi_flutter_challenge_arman/utils/snack_bar_helper.dart';
import 'package:mahdi_flutter_challenge_arman/views/stadium_seat_page/bloc/stadium_seat_page_cubit.dart';
import 'package:mahdi_flutter_challenge_arman/views/stadium_seat_page/widgets/stadium_seat_page_bottom_navigation.dart';
import 'package:mahdi_flutter_challenge_arman/views/stadium_seat_page/widgets/stadium_seat_page_home_view.dart';

class StadiumSeatPage extends StatefulWidget {
  @override
  StadiumSeatPageState createState() => StadiumSeatPageState();
}

class StadiumSeatPageState extends State<StadiumSeatPage>
    with TickerProviderStateMixin {
  bool isExtendedToFullScreen = false;
  ScrollController _searchViewScrollController = ScrollController();
  BuildContext? myContext;
  SnackBarHelper snackBarHelper = getIt();
  late final AnimationController animation =
      AnimationController(vsync: this, duration: const Duration(seconds: 1));
  late final AnimationController animationArtworkImage = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 500));
  late final Animation<double> _fadeInFadeOut =
      Tween<double>(begin: 0.0, end: 1.0).animate(animation);
  late final Animation<double> _fadeInFadeOutArtworkImage =
      Tween<double>(begin: 0.0, end: 1.0).animate(animationArtworkImage);
  late final AnimationController animationFilters =
      AnimationController(vsync: this, duration: const Duration(seconds: 1));
  late final Animation<double> fadeInFadeOutFilters =
      Tween<double>(begin: 0.0, end: 1.0).animate(animationFilters);
  bool isLiked = false;
  late Animation<Offset> animationYear = Tween<Offset>(
    begin: const Offset(-2.0, 0.0),
    end: const Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: animationYearController,
    curve: Curves.fastLinearToSlowEaseIn,
  ));
  late AnimationController animationYearController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  );

  late Animation<Offset> animationArtWorkName = Tween<Offset>(
    begin: const Offset(2.0, 0.0),
    end: const Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: animationArtWorkNameController,
    curve: Curves.fastLinearToSlowEaseIn,
  ));
  late AnimationController animationArtWorkNameController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  );

  final debouncer =
      Debouncer<String>(Duration(milliseconds: 500), initialValue: '');
  TextEditingController searchController = TextEditingController();
  bool isFiltersVisible = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    searchController.addListener(() => debouncer.value = searchController.text);
    super.initState();
  }

  @override
  void dispose() {
    animation.dispose();
    animationArtworkImage.dispose();
    animationFilters.dispose();
    animationYearController.dispose();
    animationArtWorkNameController.dispose();
    _searchViewScrollController.dispose();
    PaintingBinding.instance.imageCache.clear();
    imageCache.clear();
    imageCache.clearLiveImages();

    super.dispose();
  }

  bool isSwipeAvailable = true;
  Image? nextImageNetwork;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StadiumSeatPageCubit>(
        create: (context) => StadiumSeatPageCubit(context),
        child: BlocBuilder<StadiumSeatPageCubit, StadiumSeatPageCubitState>(
            builder: (context, state) {
          myContext = context;
          return BlocListener<StadiumSeatPageCubit, StadiumSeatPageCubitState>(
              listener: (context, state) {
                if (state is StadiumSeatPageMainState) {
                  if (state.mainModel.selectedBottomNavigationIndex == 1) {
                    isSwipeAvailable = true;
                  }

                  if (state.mainModel.isErrorGetData) {
                    ScaffoldMessenger.of(context).showSnackBar(snackBarHelper
                        .showErrorSnackBar(state.mainModel.errorMessage));
                    setAllErrorsToFalse();
                  }
                }
              },
              child: WillPopScope(
                onWillPop: () async {
                  backFromMainPage();

                  return false;
                },
                child: (state is StadiumSeatPageMainState)
                    ? Scaffold(
                        resizeToAvoidBottomInset: false,
                        body: Stack(children: [
                          StadiumSeatPageHomeView(
                            onMap: onMap,
                            getMoreMuseums: () {},
                            onMuseumTap: () {},
                            mainModel: state.mainModel,
                          ),
                        ]))
                    : Container(),
              ));
        }));
  }

  void animateName() {
    animation.value = 0;
    animationArtworkImage.value = 0;
    animation.forward();
    animationArtworkImage.forward();
  }

  void animateYearAndNameOfArtWork() {
    animationYearController.value = 0;
    animationArtWorkNameController.value = 0;
    Future.delayed(const Duration(milliseconds: 1000), () {
      animationYearController.animateTo(1.0);
      animationArtWorkNameController.animateTo(1.0);
    });
  }

  void backFromMainPage() {
    // todo correct this
    Navigator.pop(context);
  }

  setAllErrorsToFalse() {
    myContext!.read<StadiumSeatPageCubit>().setAllErrorsToFalse();
  }

  void onMap() {
    // todo onMap
  }

  setExpansionStatusUserProfile(int index) {
    myContext!.read<StadiumSeatPageCubit>().setExpansionStatus(index);
  }

  int getExpandedCount() {
    return myContext!.read<StadiumSeatPageCubit>().getExpandedCount();
  }
}
