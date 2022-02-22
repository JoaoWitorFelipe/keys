import 'package:flutter/material.dart';

class StatefulListWithKeyWidget extends StatefulWidget {
  const StatefulListWithKeyWidget({Key? key}) : super(key: key);

  @override
  _StatefulListWithKeyWidgetState createState() =>
      _StatefulListWithKeyWidgetState();
}

class _StatefulListWithKeyWidgetState extends State<StatefulListWithKeyWidget> {
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
