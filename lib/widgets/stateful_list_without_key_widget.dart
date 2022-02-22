import 'package:flutter/material.dart';

class StatefulListWithoutKeyWidget extends StatefulWidget {
  const StatefulListWithoutKeyWidget({Key? key}) : super(key: key);

  @override
  _StatefulListWithoutKeyWidgetState createState() =>
      _StatefulListWithoutKeyWidgetState();
}

class _StatefulListWithoutKeyWidgetState
    extends State<StatefulListWithoutKeyWidget> {
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
