import 'unsplash_image.dart';

class UnsplashImages {
  final List<UnsplashImage> images;

  UnsplashImages({required this.images});

  factory UnsplashImages.formJson(List<dynamic> json) {
    final List<UnsplashImage> images =
        json.map((it) => UnsplashImage.fromJson(it)).toList();
    return UnsplashImages(
      images: images,
    );
  }
}
