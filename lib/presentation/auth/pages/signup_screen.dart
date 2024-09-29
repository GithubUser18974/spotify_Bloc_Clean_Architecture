import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/Widgets/Button/basic_app_button.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';
import 'package:spotify/presentation/auth/pages/signin_screen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signinText(context),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 50,
          width: 50,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: context.isDarkMode
                  ? Colors.white.withOpacity(.03)
                  : Colors.black.withOpacity(.04),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: context.isDarkMode ? Colors.white : Colors.black,
              size: 15,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            SizedBox(
              height: 50,
            ),
            _fullNameField(context, "Full Name"),
            SizedBox(
              height: 20,
            ),
            _fullNameField(context, "Email"),
            SizedBox(
              height: 20,
            ),
            _fullNameField(context, "Password"),
            SizedBox(
              height: 30,
            ),
            BasicAppButton(onPressed: () {}, title: 'Create Account')
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return Text(
      textAlign: TextAlign.center,
      'Register',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }

  Widget _fullNameField(BuildContext context, String hintText) {
    return TextField(
      decoration: InputDecoration(hintText: hintText)
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
}

Widget _signinText(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Do you have an account? ',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: context.isDarkMode ? Colors.white : Colors.black),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => SigninPage()));
          },
          child: Text(
            'Sign in',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Color(0xff288ce9)),
          ),
        ),
      ],
    ),
  );
}
