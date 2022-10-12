import 'package:flutter/material.dart';
import '../models/demo_images.dart';
import '../models/images_choose.dart';

class SingleImageDisplayScreen extends StatelessWidget {
  static const routeName = '/singleImage';

  List<ImageChoose> filterImage(String id) {
    return allImages.where((img) => img.id == id).toList();
  }

  @override
  Widget build(BuildContext context) {
    final uniqueId = ModalRoute.of(context)?.settings.arguments as String;
    final myImage = filterImage(uniqueId).toList();
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text(uniqueId),
      ),
      body: Center(
        child: Image.network(
          myImage[0].imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
