import 'package:flutter/material.dart';

class IntroItem {
  IntroItem(
      {required this.imagePath, required this.title, required this.subTitle});

  final String imagePath;
  final String title;
  final String subTitle;

  ImageProvider getAssetImage() {
    return AssetImage(imagePath);
  }

  Image getImage() {
    return Image(image: getAssetImage());
  }
}
