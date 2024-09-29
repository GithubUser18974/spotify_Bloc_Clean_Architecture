import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/Widgets/Button/basic_app_button.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';
import 'package:spotify/core/config/theme/app_colour.dart';
import 'package:spotify/presentation/auth/pages/signup_screen.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signUpText(context),
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
            _sigInText(),
            _needHelp(context),
            _fullNameField(context, "Enter Username Or Email"),
            SizedBox(
              height: 20,
            ),
            _fullNameField(context, "Password"),
            SizedBox(
              height: 30,
            ),
            BasicAppButton(onPressed: () {}, title: 'Sign in')
          ],
        ),
      ),
    );
  }

  Widget _sigInText() {
    return Text(
      textAlign: TextAlign.center,
      'Sign IN',
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

Widget _signUpText(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Not A member?',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: context.isDarkMode ? Colors.white : Colors.black),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => SignUpPage()));
          },
          child: Text(
            'Register Now',
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

Widget _needHelp(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'if You Need Any Support',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: context.isDarkMode ? Colors.white : Colors.black),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => SignUpPage()));
          },
          child: Text(
            'Click Here',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: AppColour.primaryColour),
          ),
        ),
      ],
    ),
  );
}
