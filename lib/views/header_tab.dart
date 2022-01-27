import 'package:flutter/material.dart';

class HeaderTab extends StatefulWidget {
  const HeaderTab({Key? key}) : super(key: key);

  @override
  State<HeaderTab> createState() => _HeaderTab();
}

class _HeaderTab extends State<HeaderTab> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
        controller: _controller,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey.shade600,
        indicatorColor: Colors.black,
        tabs: const [
          Tab(
            text: "Popular",
          ),
          Tab(
            text: "New",
          ),
          Tab(
            text: "Classic",
          ),
          Tab(
            text: "Stylish",
          )
        ]);
  }
}
