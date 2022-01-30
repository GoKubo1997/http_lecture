import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// view models
import 'view_models/image_list_cubit.dart';
// widgets
import 'views/body.dart';
import 'views/image_list.dart';

void main() {
  runApp(const MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: BlocProvider(
        create: (_) => ImageListCubit(),
        child: Column(
          children: [
            const Body(),
            BlocBuilder<ImageListCubit, String>(
                builder: (context, queryKeyword) =>
                    ImageList(queryKeyword: queryKeyword)),
          ],
        ),
      ),
    );
  }
}
