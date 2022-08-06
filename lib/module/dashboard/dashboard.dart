import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hire_me/config/constants/app_string.dart';
import 'package:hire_me/module/dashboard/widgets/new_job.dart';
import 'package:hire_me/theme/app_style.dart';
import 'package:hire_me/module/dashboard/widgets/category.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);
  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends ConsumerState<DashboardPage> {
  final isSecure = true;
  int current = 0;
  final CarouselController controller = CarouselController();

  final List<String> itemList = ['', '', '', '', '', '', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return GestureDetector(
      onTap: _hideKeyboard,
      child: Scaffold(
        appBar: _appBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _welcomeUserWidget(),
                SizedBox(height: height * 0.02),
                _searchWidget(),
                SizedBox(height: height * 0.02),
                _categoryWidget(),
                SizedBox(height: height * 0.02),
                _newJobPostingWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //App bar header widget
  PreferredSizeWidget _appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text(AppString.appName),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.bell),
        ),
        const SizedBox(width: 10),
      ],
    );
  }

  // Welcome user message
  Widget _welcomeUserWidget() {
    return Row(
      children: const [
        Text('Welcome back, '),
        Text('Srishti!', style: Styles.blueBoldText20),
      ],
    );
  }

  // Search widget
  Widget _searchWidget() {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        alignment: Alignment.centerLeft,
      ),
      onPressed: () {},
      icon: const Icon(Icons.search),
      label: const Text('Search'),
    );
  }

  // Categories widget
  Widget _categoryWidget() {
    return const CategoryWidget();
  }

  // Categories widget
  Widget _newJobPostingWidget() {
    return const NewJobWidget();
  }

  // Hide keyboard
  void _hideKeyboard() {
    FocusScope.of(context).unfocus();
  }
} //End of the class
