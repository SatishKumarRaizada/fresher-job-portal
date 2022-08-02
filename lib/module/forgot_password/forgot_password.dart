import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hire_me/config/constants/app_icon.dart';
import 'package:hire_me/config/constants/app_image.dart';
import 'package:hire_me/config/constants/app_key.dart';
import 'package:hire_me/config/constants/app_string.dart';
import 'package:hire_me/widgets/app_textfield.dart';

class ForgotPasswordPage extends ConsumerStatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);
  @override
  ForgotPasswordPageState createState() => ForgotPasswordPageState();
}

class ForgotPasswordPageState extends ConsumerState<ForgotPasswordPage> {
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
                SizedBox(height: height * 0.02),
                _backButtonWidget(),
                SizedBox(height: height * 0.02),
                SvgPicture.asset(AppIcon.login, width: 180),
                _forgotDetailWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Going back to previous screen
  Widget _backButtonWidget() {
    return Align(
      alignment: Alignment.centerLeft,
      child: IconButton(
        onPressed: _goBack,
        icon: const Icon(CupertinoIcons.arrow_left),
      ),
    );
  }

  Widget _forgotDetailWidget() {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            _usernameWidget(),
            SizedBox(height: height * 0.04),
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

  // Login button widget
  Widget _loginButtonWidget() {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.9,
      child: TextButton(
        onPressed: () {},
        child: const Text(AppString.requestPassword),
      ),
    );
  }

  // Hide keyboard
  void _goBack() {
    HapticFeedback.selectionClick();
    Navigator.pop(context);
  }

  // Hide keyboard
  void _hideKeyboard() {
    FocusScope.of(context).unfocus();
  }
}
