import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'views/body.dart';
import 'views/image_list.dart';

void main() {
  runApp(const MaterialApp(
      home: ProviderScope(child: MyApp()), debugShowCheckedModeBanner: false));
} //

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
      body: Column(
        children: const [
          Body(),
          ImageList(),
        ],
      ),
    );
  }
}
