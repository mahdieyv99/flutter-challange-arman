import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahdi_flutter_challenge_arman/di/di.dart';
import 'package:mahdi_flutter_challenge_arman/utils/snack_bar_helper.dart';
import 'package:mahdi_flutter_challenge_arman/values/themes/my_colors.dart';
import 'package:mahdi_flutter_challenge_arman/views/login/bloc/login_page_cubit.dart';
import 'package:mahdi_flutter_challenge_arman/views/login/widgets/login_view.dart';
import 'package:mahdi_flutter_challenge_arman/views/stadium_seat_page/stadium_seat_page.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  BuildContext? myContext;
  SnackBarHelper snackBarHelper = getIt();

  late Animation<Offset> animation = Tween<Offset>(
    begin: const Offset(0.0, 0.0),
    end: const Offset(-1.0, 0.0),
  ).animate(CurvedAnimation(
    parent: animationController,
    curve: Curves.fastLinearToSlowEaseIn,
  ));
  late AnimationController animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  );
  late Animation<Offset> animation2 = Tween<Offset>(
    begin: const Offset(1.0, 0.0),
    end: const Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: animationController2,
    curve: Curves.fastLinearToSlowEaseIn,
  ));
  late AnimationController animationController2 = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  );

  @override
  void dispose() {
    animationController.dispose();
    animationController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginPageCubit>(
        create: (context) => LoginPageCubit(context),
        child: BlocBuilder<LoginPageCubit, LoginPageCubitState>(
            builder: (context, state) {
          myContext = context;
          return BlocListener<LoginPageCubit, LoginPageCubitState>(
              listener: (context, state) {
                if (state is LoginPageMainState) {
                  if (state.mainModel.isError) {
                    ScaffoldMessenger.of(context).showSnackBar(snackBarHelper
                        .showErrorSnackBar(state.mainModel.errorMessage));
                    myContext!.read<LoginPageCubit>().setAllErrorsToFalse();
                  }
                  if (state.mainModel.isSuccessfullySignedIn) {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => StadiumSeatPage()));
                    myContext!.read<LoginPageCubit>().setAllErrorsToFalse();
                  }
                }
              },
              child: WillPopScope(
                onWillPop: () async {
                  if (state is LoginPageMainState) {
                    if (state.mainModel.isRegisterView) {
                      backToLogin();
                    } else {
                      backToSplashPage();
                    }
                  }
                  return false;
                },
                child: Scaffold(
                  body: (state is LoginPageMainState)
                      ? SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/login_background.jpg"),
                                  fit: BoxFit.cover),
                              color: MyColors.darkBlue,
                            ),
                            child: Stack(children: [
                              SlideTransition(
                                position: animation,
                                child: LoginView(
                                    isLoading: state.mainModel.isLoading,
                                    usernameController: userNameController,
                                    passwordController: passwordController,
                                    backToSplashPage: backToSplashPage,
                                    onSignIn: onSignIn),
                              ),
                            ]),
                          ),
                        )
                      : Container(),
                ),
              ));
        }));
  }

  void backToLogin() {
    animationController2.reverse();
    animationController.reverse();

    myContext!.read<LoginPageCubit>().backToLogin();
  }

  void backToSplashPage() {
    Navigator.pop(context);
  }

  void onSignIn() {
    myContext!
        .read<LoginPageCubit>()
        .onLogin(userNameController.text, passwordController.text);
  }
}

class SlideRightRoute extends PageRouteBuilder {
  Widget page;

  SlideRightRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}
