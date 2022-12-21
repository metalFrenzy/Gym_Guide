import 'package:flutter/material.dart';

class ImageRender extends StatelessWidget {
  final String imagePath;

  ImageRender(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
        left: 10,
        right: 10,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          imagePath,
        ),
      ),
    );
  }
}
