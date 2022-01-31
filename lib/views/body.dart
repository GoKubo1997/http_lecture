import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// view models
import '../view_models/image_list_cubit.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "It's \nHTTP Friday 🔥",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade800,
                height: 1.5),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 46,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8)),
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade700,
                  ),
                  border: InputBorder.none,
                  hintText: "Search with keywords",
                  hintStyle: TextStyle(color: Colors.grey.shade500)),
              onSubmitted: (value) =>
                  context.read<ImageListCubit>().updateQueryKeyword(value),
            ),
          ),
        ],
      ),
    );
  }
}
