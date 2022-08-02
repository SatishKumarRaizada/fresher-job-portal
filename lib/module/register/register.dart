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

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends ConsumerState<RegisterPage> {
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
                SvgPicture.asset(AppIcon.forgot, width: 180),
                _userLoginWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _backButtonWidget() {
    return Align(
      alignment: Alignment.centerLeft,
      child: IconButton(
        onPressed: _goBack,
        icon: const Icon(CupertinoIcons.arrow_left),
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
          children: [
            _nameWidget(),
            SizedBox(height: height * 0.02),
            _usernameWidget(),
            SizedBox(height: height * 0.02),
            _mobileWidget(),
            SizedBox(height: height * 0.02),
            _passwordWidget(),
            SizedBox(height: height * 0.03),
            _registerButtonWidget(),
          ],
        ),
      ),
    );
  }

  // Name widget
  Widget _nameWidget() {
    return AppTextField(
      hintText: AppString.name,
      keyboardType: TextInputType.emailAddress,
      prefixWidget: const Icon(
        Icons.person,
        key: Key(WidgetKey.usernameIcon),
      ),
      onChange: () {},
    );
  }

  // Username widget
  Widget _usernameWidget() {
    return AppTextField(
      hintText: AppString.email,
      keyboardType: TextInputType.emailAddress,
      prefixWidget: const Icon(
        Icons.email,
        key: Key(WidgetKey.usernameIcon),
      ),
      onChange: () {},
    );
  }

  // Username widget
  Widget _mobileWidget() {
    return AppTextField(
      hintText: AppString.mobile,
      keyboardType: TextInputType.phone,
      prefixWidget: const Icon(
        Icons.phone_android,
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
      onChange: () {},
    );
  }

  // Register button
  Widget _registerButtonWidget() {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.9,
      child: TextButton(
        onPressed: () {},
        child: const Text(AppString.register),
      ),
    );
  }

  // Go back
  void _goBack() {
    HapticFeedback.selectionClick();
    Navigator.pop(context);
  }

  // Hide keyboard
  void _hideKeyboard() {
    FocusScope.of(context).unfocus();
  }
}
