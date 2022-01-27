import 'package:flutter/material.dart';
import '../models/unsplash_image.dart';

class SingleImage extends StatelessWidget {
  const SingleImage({Key? key, required this.splashImage}) : super(key: key);

  final UnsplashImage splashImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: Image.network(
        splashImage.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
