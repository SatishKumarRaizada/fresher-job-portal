import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hire_me/config/constants/app_icon.dart';
import 'package:hire_me/config/constants/app_string.dart';
import 'package:hire_me/module/notification/model/notification_model.dart';
import 'package:hire_me/theme/app_style.dart';
import 'package:hire_me/theme/colors.dart';

class JobDetailPage extends StatefulWidget {
  const JobDetailPage({Key? key}) : super(key: key);
  @override
  State<JobDetailPage> createState() => _JobDetailPageState();
}

class _JobDetailPageState extends State<JobDetailPage> {
  final double coverHeight = 280;
  final double profileHeight = 144;
  NotificationModel? overview;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width * 0.7,
              child: TextButton(onPressed: () {}, child: const Text('Apply Now')),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const CircleBorder(),
              ),
              onPressed: () {},
              child: const Icon(Icons.file_copy),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            prfileWidget(),
            SizedBox(height: height * 0.04),
            const Text('Sr. Software Engineer', style: Styles.headline20),
            const Text(
              'Remote, Mailchipms in Oakland, California',
              style: Styles.lightText14,
            ),
            SizedBox(height: height * 0.02),
            _overviewDetail(),
            _roleDetail(),
          ],
        ),
      ),
    );
  }

  // Profile widget
  Widget prfileWidget() {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final top = coverHeight - profileHeight / 1.5;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topLeft,
      children: <Widget>[
        Container(
          height: height * 0.25,
          color: AppColors.appColor,
          child: SvgPicture.asset(AppIcon.goal),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: goBack,
              icon: const Icon(CupertinoIcons.arrow_left, color: AppColors.appWhite),
            ),
          ),
        ),
        Positioned(
          top: top,
          left: height * 0.2,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.appWhite,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(AppIcon.apple, width: 40),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Overview details
  Widget _overviewDetail() {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('Overview', style: Styles.blueBoldText16),
          ),
          SizedBox(height: height * 0.01),
          const Text(AppString.detailDescription, style: Styles.lightText14),
        ],
      ),
    );
  }

  // Overview details
  Widget _roleDetail() {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('What you will do?', style: Styles.blueBoldText16),
          ),
          SizedBox(height: height * 0.01),
          const Text(AppString.detailDescription, style: Styles.lightText14),
        ],
      ),
    );
  }

  // go back
  void goBack() {
    Navigator.pop(context);
  }
}
