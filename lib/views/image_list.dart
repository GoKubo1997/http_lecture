import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_lecture/models/unsplash_image.dart';
import 'package:http_lecture/api/unsplash_images_repository.dart';
import '../view_models/image_list_view_model.dart';
// widgets
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:http_lecture/models/unsplash_images.dart';
import 'single_image.dart';

class ImageList extends ConsumerWidget {
  const ImageList({Key? key}) : super(key: key);

  List<Widget> _generateWidgets(List<UnsplashImage> images) {
    final List<Widget> widgets = [];
    for (int i = 0; i < images.length; i++) {
      if (i % 2 == 0) {
        widgets.add(
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: SingleImage(splashImage: images[i])),
        );
      } else {
        widgets.add(StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1.5,
            child: SingleImage(splashImage: images[i])));
      }
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageQuery = ref.watch(imageQueryProvider);

    return FutureBuilder<UnsplashImages>(
        future: UnsplashImagesRepository.getImages(query: imageQuery),
        builder: (context, AsyncSnapshot<UnsplashImages> snapshot) {
          if (!snapshot.hasData) {
            return const Padding(
              padding: EdgeInsets.all(50.0),
              child: SizedBox(
                height: 20,
                width: 20,
                child: CupertinoActivityIndicator(),
              ),
            );
          }
          final data = snapshot.data;
          if (data != null) {
            return Expanded(
                child: SingleChildScrollView(
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: _generateWidgets(data.images),
              ),
            ));
          }
          return Container();
        });
  }
}
