import 'package:flutter/material.dart';

class StatefulListWidget extends StatefulWidget {
  const StatefulListWidget({Key? key}) : super(key: key);

  @override
  _StatefulListWidgetState createState() => _StatefulListWidgetState();
}

class _StatefulListWidgetState extends State<StatefulListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        300,
        (index) => Text('index: $index'),
      ),
    );
  }
}
