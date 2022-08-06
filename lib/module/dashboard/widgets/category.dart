import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/module/dashboard/model/new_posting.dart';
import 'package:hire_me/theme/app_style.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);
  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  final List<String> itemList = ['', '', '', '', '', '', '', '', '', ''];
  int current = 0;
  final CarouselController _controller = CarouselController();
  final newPosting = <NewPostingModel>[NewPostingModel()];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Category', style: Styles.headline20),
        ),
        SizedBox(height: height * 0.01),
        CarouselSlider.builder(
          itemCount: itemList.length,
          carouselController: _controller,
          options: CarouselOptions(
            viewportFraction: 0.85,
            aspectRatio: 2.1,
            initialPage: current,
          ),
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      title: const Text(
                        'Product Designer',
                        style: Styles.headline18,
                      ),
                      subtitle: const Text(
                        'Tokopedia, Discord, and Etc.',
                        style: Styles.lightText16,
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text('25', style: Styles.headline20),
                              SizedBox(width: width * 0.02),
                              const Text(
                                'jobs Available',
                                style: Styles.lightText16,
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(CupertinoIcons.arrow_right),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
