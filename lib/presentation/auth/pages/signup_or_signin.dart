import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testbloc/common/helpers/is_dark_mode.dart';
import 'package:testbloc/common/widgets/appbar/app_bar.dart';
import 'package:testbloc/common/widgets/button/basic_app_button.dart';
import 'package:testbloc/core/configs/assets/app_images.dart';
import 'package:testbloc/core/configs/assets/app_vectors.dart';
import 'package:testbloc/core/configs/theme/app_colors.dart';
import 'package:testbloc/presentation/auth/pages/signIn_page.dart';
import 'package:testbloc/presentation/auth/pages/signup.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BasicAppbar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.authBG,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppVectors.logo),
                  SizedBox(height: 50),
                  Text(
                    'Enjoy listening to music',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff383838),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Spotify is a proprietary Swedish audio streaming and media services provider ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: BasicAppButtton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SignUpPage()));
                            },
                            title: 'Register',
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SignInPage()));
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  color: context.isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
