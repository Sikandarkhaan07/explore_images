import 'dart:core';

import 'package:flutter/material.dart';

import './grid_display.dart';
import '../models/images_choose.dart';

class TabView extends StatelessWidget {
  late final List<ImageChoose> allImages;

  TabView(this.allImages);

  List<ImageChoose> filterImages(String categoryName) {
    return allImages.where((img) => img.title == categoryName).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Tab(
          child: DisplayCommonImage('All', allImages),
        ),
        Tab(
          child: DisplayCommonImage('Cat', filterImages('cat')),
        ),
        Tab(
          child: DisplayCommonImage('dog ', filterImages('dog')),
        ),
        Tab(
          child: DisplayCommonImage('tiger', filterImages('tiger')),
        ),
      ],
    );
  }
}
