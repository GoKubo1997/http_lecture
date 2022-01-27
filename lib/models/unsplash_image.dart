class UnsplashImage {
  final String id;
  final String? title;
  final String imageUrl;

  UnsplashImage({required this.id, this.title, required this.imageUrl});

  factory UnsplashImage.fromJson(Map<String, dynamic> json) {
    return UnsplashImage(
      id: json['id'] as String,
      title: json['description'] as String?,
      imageUrl: json['urls']["regular"] as String,
    );
  }
}
