import 'package:flutter/material.dart';
import '../models/unsplash_image.dart';

class SingleImage extends StatelessWidget {
  const SingleImage({Key? key, required this.image}) : super(key: key);

  final UnsplashImage image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: Image.network(
        image.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
