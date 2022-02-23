import 'package:flutter/material.dart';

class StatelessListWidget extends StatelessWidget {
  const StatelessListWidget({Key? key}) : super(key: key);

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
