import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hire_me/config/utilities/tap_feedback.dart';
import 'package:hire_me/module/notification/model/notification_model.dart';
import 'package:hire_me/theme/app_style.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  var list = <NotificationModel>[];
  final notificationWidgetList = <Widget>[];
  final _listKey = GlobalKey<AnimatedListState>();
  final _offset = Tween(begin: const Offset(1, 0), end: const Offset(0, 0));

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      loadNewPosting();
    });
  }

  void loadNewPosting() async {
    String data = await rootBundle.loadString('assets/data/notification.json');
    final List decodedJson = json.decode(data);
    list = decodedJson.map((jsonElement) => NotificationModel.fromJson(jsonElement)).toList();
    for (var element in list) {
      await Future.delayed(const Duration(milliseconds: 100));
      notificationWidgetList.add(_notificationCard(element));
      _listKey.currentState!.insertItem(notificationWidgetList.length - 1);
    }
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
                _notificationListWidget(),
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
      title: const Text('Notification'),
    );
  }

  // notification list widget
  Widget _notificationListWidget() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Text('Notification List', style: Styles.blueText18),
    );
  }

  // Recent search widget
  Widget _recentSearchWidget() {
    return AnimatedList(
      key: _listKey,
      initialItemCount: notificationWidgetList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index, animation) {
        return SlideTransition(
          position: animation.drive(_offset),
          child: notificationWidgetList[index],
        );
      },
    );
  }

  Widget _notificationCard(NotificationModel notification) {
    return Card(
      child: ListTile(
        title: Text(notification.title!),
        contentPadding: const EdgeInsets.all(10),
        subtitle: Text(notification.subtitle!, style: Styles.lightText14),
        leading: SvgPicture.asset('assets/icons/${notification.icon}.svg', width: 30),
      ),
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
