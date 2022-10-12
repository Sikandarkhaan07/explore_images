import 'package:flutter/material.dart';
import '../models/images_choose.dart';
import './single_imagedisplay.dart';

class DisplayCommonImage extends StatelessWidget {
  final String title;
  final List<ImageChoose> allImages;
  DisplayCommonImage(this.title,this.allImages);



  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 1,
        maxCrossAxisExtent: 300,
      ),
      children: allImages.map(
        (imgData) => SingleImagesDisplay(imgData.id, imgData.imageUrl),
      ).toList(),
    );
  }
}
