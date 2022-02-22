import 'package:flutter/material.dart';

import '../widgets/stateful_list_with_key_widget.dart';
import '../widgets/stateful_list_without_key_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          StatefulListWithKeyWidget(
              key: PageStorageKey('stateful_lists_with_key')),
          StatefulListWithoutKeyWidget(
              key: PageStorageKey('stateful_lists_without_key')),
        ],
      ),
    );
  }
}
