import 'package:flutter/material.dart';

import 'widgets/stateful_list_widget.dart';
import 'widgets/stateless_list_widget.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({Key? key}) : super(key: key);

  @override
  _PageViewExampleState createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          StatefulListWidget(key: PageStorageKey('stateful_lists_with_key')),
          StatelessListWidget(key: PageStorageKey('stateless_lists_with_key')),
        ],
      ),
    );
  }
}
