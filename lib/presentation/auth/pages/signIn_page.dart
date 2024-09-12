import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testbloc/common/helpers/is_dark_mode.dart';
import 'package:testbloc/common/widgets/appbar/app_bar.dart';
import 'package:testbloc/common/widgets/button/basic_app_button.dart';
import 'package:testbloc/core/configs/assets/app_vectors.dart';
import 'package:testbloc/presentation/auth/pages/signup.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _siginText(context),
      appBar: BasicAppbar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(context),
            SizedBox(height: 50),
            _emailField(context),
            SizedBox(height: 15),
            _passwordField(context),
            SizedBox(
              height: 30,
            ),
            BasicAppButtton(onPressed: () {}, title: 'Sign In'),
          ],
        ),
      ),
    );
  }

  Widget _registerText(BuildContext context) {
    return Text(
      'Sign In',
      style: TextStyle(
          color: context.isDarkMode ? Colors.white : Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: 'Enter email')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: 'Password')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _siginText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Not a Member?',
              style: TextStyle(
                  color: context.isDarkMode ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15)),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SignUpPage()));
              },
              child: Text(
                'Register Now',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ))
        ],
      ),
    );
  }
}
