import 'dart:convert';
import 'package:http_lecture/models/unsplash_images.dart';
import 'package:http/http.dart' as http;

class UnsplashImagesRepository {
  static Future<UnsplashImages> getImages() async {
    try {
      const String url =
          "https://api.unsplash.com/photos?query=office&page=3&client_id=Xvh8B-wbC2SNrr_imfpIxflhdGL_CeWyefpjdGPTuMk";
      final response = await http.get(Uri.parse(url));
      final decodedData = json.decode(response.body);

      return UnsplashImages.formJson(decodedData);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
