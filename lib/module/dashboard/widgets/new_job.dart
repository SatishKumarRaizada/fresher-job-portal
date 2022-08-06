import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hire_me/module/dashboard/model/new_posting.dart';
import 'package:hire_me/theme/app_style.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class NewJobWidget extends StatefulWidget {
  const NewJobWidget({Key? key}) : super(key: key);
  @override
  State<NewJobWidget> createState() => _NewJobWidgetState();
}

class _NewJobWidgetState extends State<NewJobWidget> {
  var newPosting = <NewPostingModel>[];

  @override
  void initState() {
    super.initState();
    loadNewPosting();
  }

  void loadNewPosting() async {
    String data = await rootBundle.loadString('assets/data/new_posting.json');
    final List decodedJson = json.decode(data);
    newPosting = decodedJson.map((jsonElement) => NewPostingModel.fromJson(jsonElement)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('New Job Posting', style: Styles.headline20),
        ),
        SizedBox(height: height * 0.01),
        ListView.builder(
          itemCount: newPosting.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                title: Text(newPosting[index].title!, style: Styles.lightText18),
                subtitle: Text(newPosting[index].subtitle!, style: Styles.lightText14),
                leading: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/${newPosting[index].icon!}.svg', width: 120),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.ellipsis_vertical),
                ),
                onTap: () {},
              ),
            );
          },
        )
      ],
    );
  }
}
