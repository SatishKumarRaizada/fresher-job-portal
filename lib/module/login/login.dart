import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hire_me/config/constants/app_icon.dart';
import 'package:hire_me/config/constants/app_image.dart';
import 'package:hire_me/config/constants/app_key.dart';
import 'package:hire_me/config/constants/app_string.dart';
import 'package:hire_me/config/route/app_route.dart';
import 'package:hire_me/theme/app_style.dart';
import 'package:hire_me/widgets/app_textfield.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ConsumerState<LoginPage> {
  final isSecure = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return GestureDetector(
      onTap: _hideKeyboard,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(height: height * 0.04),
                SvgPicture.asset(AppIcon.login, width: 180),
                _userLoginWidget(),
                SizedBox(height: height * 0.02),
                _userLoginOptionWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // User login detail widgets
  Widget _userLoginWidget() {
    final height = MediaQuery.of(context).size.height;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(AppString.welcomeBack, style: Styles.headline20),
            const Text(AppString.loginToContinue, style: Styles.lightText18),
            SizedBox(height: height * 0.02),
            _usernameWidget(),
            SizedBox(height: height * 0.02),
            _passwordWidget(),
            SizedBox(height: height * 0.02),
            _forgotPassword(),
            SizedBox(height: height * 0.03),
            _loginButtonWidget(),
          ],
        ),
      ),
    );
  }

  // Username widget
  Widget _usernameWidget() {
    return AppTextField(
      hintText: AppString.username,
      keyboardType: TextInputType.emailAddress,
      prefixWidget: const Icon(
        Icons.person,
        key: Key(WidgetKey.usernameIcon),
      ),
      onChange: () {},
    );
  }

  // Password widget
  Widget _passwordWidget() {
    return AppTextField(
      hintText: AppString.password,
      isSecure: isSecure,
      prefixWidget: const Icon(
        Icons.lock,
        key: Key(WidgetKey.passwordIcon),
      ),
      suffixWidget: IconButton(
        onPressed: () {},
        icon: Icon(isSecure ? CupertinoIcons.eye_slash : CupertinoIcons.eye),
      ),
      onChange: () {},
    );
  }

  // Forgot password widget
  Widget _forgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: _navigateToForgotPassword,
        child: const Text(
          AppString.forgot,
          textAlign: TextAlign.right,
          key: Key(WidgetKey.forgotText),
        ),
      ),
    );
  }

  // Login button widget
  Widget _loginButtonWidget() {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.9,
      child: TextButton(
        onPressed: () {},
        child: const Text(AppString.loginButton),
      ),
    );
  }

  // Login option provider widget
  Widget _userLoginOptionWidget() {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(AppString.newAccount),
              SizedBox(width: width * 0.02),
              GestureDetector(
                onTap: _navigateToRegister,
                child: const Text(
                  AppString.signUp,
                  style: Styles.subheading16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: height * 0.01),
        const Align(alignment: Alignment.center, child: Text('-or-')),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _googleWidget(),
              _facebookWidget(),
              _appleWidget(),
            ],
          ),
        ),
      ],
    );
  }

  // Google login widget
  Widget _googleWidget() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
      ),
      onPressed: () {},
      child: SvgPicture.asset(AppIcon.google, height: 30),
    );
  }

  // Facebook login widget
  Widget _facebookWidget() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
      ),
      onPressed: () {},
      child: SvgPicture.asset(AppIcon.facebook, height: 30),
    );
  }

  // Apple login widget
  Widget _appleWidget() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
      ),
      onPressed: () {},
      child: SvgPicture.asset(AppIcon.apple, height: 30),
    );
  }

  // Navigate to register screen
  void _navigateToRegister() async {
    HapticFeedback.selectionClick();
    await Navigator.pushNamed(context, Routes.registerRoute);
  }

  // Navigate to forgot password screen
  void _navigateToForgotPassword() async {
    HapticFeedback.selectionClick();
    await Navigator.pushNamed(context, Routes.forgotRoute);
  }

  // Hide keyboard
  void _hideKeyboard() {
    FocusScope.of(context).unfocus();
  }
} //End of the class
