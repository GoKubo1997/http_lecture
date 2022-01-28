import 'dart:convert';
import 'package:http_lecture/models/unsplash_images.dart';
import 'package:http/http.dart' as http;

class UnsplashImagesRepository {
  static Future<UnsplashImages> getImages({required String query}) async {
    try {
      final String url =
          "https://api.unsplash.com/search/photos?query=$query&per_page=50&client_id=Xvh8B-wbC2SNrr_imfpIxflhdGL_CeWyefpjdGPTuMk";
      final http.Response response = await http.get(Uri.parse(url));
      final decodedData = json.decode(response.body);

      return UnsplashImages.formJson(decodedData["results"]);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
