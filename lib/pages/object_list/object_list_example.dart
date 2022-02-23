import 'package:flutter/material.dart';

class ObjectListExample extends StatefulWidget {
  const ObjectListExample({Key? key}) : super(key: key);

  @override
  _ObjectListExampleState createState() => _ObjectListExampleState();
}

class _ObjectListExampleState extends State<ObjectListExample> {
  final objects = [
    SampleObject(t: '1'),
    SampleObject(t: '2'),
    SampleObject(t: '3'),
    SampleObject(t: '4'),
    SampleObject(t: '5'),
    SampleObject(t: '6'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Object List Example'),
      ),
      body: ReorderableListView(
        children: objects
            .map(
              (object) => ObjectItem(
                key: ObjectKey(object),
                sampleObject: object,
              ),
            )
            .toList(),
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final item = objects.removeAt(oldIndex);
            objects.insert(newIndex, item);
          });
        },
      ),
    );
  }
}

class SampleObject {
  final String t;

  SampleObject({required this.t});
}

class ObjectItem extends StatelessWidget {
  final SampleObject sampleObject;
  const ObjectItem({Key? key, required this.sampleObject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(sampleObject.t),
    );
  }
}
