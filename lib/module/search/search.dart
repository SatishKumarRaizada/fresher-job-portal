import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/config/utilities/tap_feedback.dart';
import 'package:hire_me/theme/app_style.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchCtrl = TextEditingController();
  final recentSearch = <String>[
    'Flutter',
    'React Native',
    'Java Micro Service',
    'Java Backend engineer',
    'Cloud Engineer',
    'Big Data',
    'Micro Services'
  ];

  @override
  void initState() {
    super.initState();
  }

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
                _trendingSearchWidget(),
                SizedBox(height: height * 0.01),
                _recentSearchWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Appbar widget
  PreferredSizeWidget _appBar() {
    return AppBar(
      leading: IconButton(
        onPressed: _goBack,
        icon: const Icon(CupertinoIcons.arrow_left),
      ),
      title: TextFormField(
        controller: _searchCtrl,
        keyboardType: TextInputType.text,
        autocorrect: true,
        decoration: const InputDecoration(
          hintText: 'Search',
          isDense: true,
          prefixIcon: Icon(Icons.search, size: 25),
        ),
      ),
    );
  }

  Widget _trendingSearchWidget() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Text('Trending Search', style: Styles.blueText18),
    );
  }

  // Recent search widget
  Widget _recentSearchWidget() {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider();
      },
      shrinkWrap: true,
      itemCount: recentSearch.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            tapFeedback();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Text(recentSearch[index]),
          ),
        );
      },
    );
  }

  // Go back
  void _goBack() {
    tapFeedback();
    Navigator.pop(context);
  }

  // Hide kepboard
  void _hideKeyboard() {
    FocusScope.of(context).unfocus();
  }
}
