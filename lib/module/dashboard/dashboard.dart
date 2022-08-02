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

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);
  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends ConsumerState<DashboardPage> {
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
              children: [],
            ),
          ),
        ),
      ),
    );
  }

  // Hide keyboard
  void _hideKeyboard() {
    FocusScope.of(context).unfocus();
  }
} //End of the class
