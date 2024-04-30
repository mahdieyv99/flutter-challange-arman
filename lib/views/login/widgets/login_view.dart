import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/widgets/buttons/my_elevated_button.dart';
import '../../../utils/widgets/text_fields/simple_text_field.dart';
import '../../../values/languages/StringsManager.dart';
import '../../../values/themes/my_colors.dart';

class LoginView extends StatefulWidget {
  bool isLoading;
  TextEditingController usernameController;
  TextEditingController passwordController;
  Function() backToSplashPage;
  Function() onSignIn;

  LoginView(
      {required this.isLoading,
      required this.usernameController,
      required this.passwordController,
      required this.backToSplashPage,
      required this.onSignIn});

  @override
  LoginViewState createState() => LoginViewState(
      isLoading,
      usernameController,
      passwordController,
      backToSplashPage,
      onSignIn);
}

class LoginViewState extends State<LoginView> {
  bool isLoading;
  TextEditingController usernameController;
  TextEditingController passwordController;
  Function() backToSplashPage;
  Function() onSignIn;

  LoginViewState(
      this.isLoading,
      this.usernameController,
      this.passwordController,
      this.backToSplashPage,
      this.onSignIn,);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: backToSplashPage,
                child: SvgPicture.asset(
                  "assets/images/back_login_icon.svg",
                  color: MyColors.cream,
                  width: 20,
                  height: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Text(
                    StringsManager.strings.login,
                    style: const TextStyle(
                        color: MyColors.cream,
                        fontFamily: "Silk Serif Regular",
                        fontSize: 39,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: SimpleTextField(
                            textController: usernameController,
                            fontSize: 14,
                            hintText: StringsManager.strings.userName,
                            activeHintTextColor: MyColors.cream,
                            hasBorder: false,
                            hasUnderline: true,
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: SimpleTextField(
                            textController: passwordController,
                            fontSize: 14,
                            hintText: StringsManager.strings.password,
                            activeHintTextColor: MyColors.cream,
                            hasBorder: false,
                            hasUnderline: true,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: SizedBox(
                      width: 200,
                      height: 50,
                      child: myElevatedButton(
                        onPressed: onSignIn,
                        backgroundColor: MyColors.cream,
                        text: StringsManager.strings.signIn,
                        textColor: MyColors.darkBlue,
                        fontFamily: "Helvetica",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        borderRadius: 50,
                        isLoading: isLoading,
                        loadingColor: MyColors.darkBlue,
                        hasIcon: false,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
