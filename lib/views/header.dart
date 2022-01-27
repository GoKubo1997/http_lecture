import 'package:flutter/material.dart';
import 'header_tab.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
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
                  hintText: "Enter something nothing'll happen",
                  hintStyle: TextStyle(color: Colors.grey.shade500)),
            ),
          ),
          const SizedBox(height: 20),
          const HeaderTab(),
        ],
      ),
    );
  }
}
