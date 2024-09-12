import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testbloc/common/helpers/is_dark_mode.dart';
import 'package:testbloc/common/widgets/appbar/app_bar.dart';
import 'package:testbloc/common/widgets/button/basic_app_button.dart';
import 'package:testbloc/core/configs/assets/app_vectors.dart';
import 'package:testbloc/data/models/auth/create_user_req.dart';
import 'package:testbloc/data/repository/usecases/auth/signup.dart';
import 'package:testbloc/presentation/auth/pages/signIn_page.dart';
import 'package:testbloc/presentation/root/pages/root.dart';
import 'package:testbloc/service_lacotor.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final TextEditingController _fullName = TextEditingController();

  final TextEditingController _email = TextEditingController();

  final TextEditingController _password = TextEditingController();

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            SizedBox(height: 50),
            _fullnameField(context),
            SizedBox(height: 15),
            _emailField(context),
            SizedBox(height: 15),
            _passwordField(context),
            SizedBox(
              height: 30,
            ),
            BasicAppButtton(
                onPressed: () async {
                  var result = await s1<SignupUseCase>().call(
                    params: CreateUserReq(
                      fullName: _fullName.text.toString(),
                      email: _email.text.toString(),
                      password: _password.text.toString(),
                    ),
                  );

                  result.fold(
                    (l) {
                      var snckbar = SnackBar(
                        content: Text(l),
                        behavior: SnackBarBehavior.floating,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snckbar);
                    },
                    (r) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const RootPage()),
                          (route) => false);
                    },
                  );
                },
                title: 'Creat Account'),
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return Text(
      'Register',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullnameField(BuildContext context) {
    return TextField(
      controller: _fullName,
      decoration: InputDecoration(hintText: 'Full Name')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _email,
      decoration: InputDecoration(hintText: 'Enter email')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _password,
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
          Text('Do you have an Account?',
              style: TextStyle(
                  color: context.isDarkMode ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15)),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SignInPage()));
              },
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ))
        ],
      ),
    );
  }
}
