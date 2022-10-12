import 'package:flutter/material.dart';
import '../models/demo_images.dart';
import '../screens/single_image_screen.dart';

class SingleImagesDisplay extends StatelessWidget {
  final String id;
  final String imageUrl;

  const SingleImagesDisplay(this.id, this.imageUrl);

  String get getImage {
    return allImages.firstWhere((img) => img.id == id).toString();
  }

  void selectImage(BuildContext context) {
    Navigator.of(context).pushNamed(
      SingleImageDisplayScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectImage(context),
      child: Image.network(imageUrl,fit: BoxFit.cover,),
    );
  }
}
