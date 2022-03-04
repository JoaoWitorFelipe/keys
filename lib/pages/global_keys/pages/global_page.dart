import 'package:flutter/material.dart';

import '../widgets/global_switch.dart';

// Whatever if GlobalPage is Stateful or Stateless!
class GlobalPage extends StatefulWidget {
  const GlobalPage({Key? key}) : super(key: key);

  @override
  _GlobalPageState createState() => _GlobalPageState();
}

class _GlobalPageState extends State<GlobalPage> {
  final GlobalKey globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: GlobalSwitch(key: globalKey),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: const GlobalSwitch(),
          ),
          Container(
            color: Colors.orange,
            alignment: Alignment.center,
            child: GlobalSwitch(key: globalKey),
          ),
        ],
      ),
    );
  }
}
