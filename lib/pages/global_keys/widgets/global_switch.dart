import 'package:flutter/material.dart';

class GlobalSwitch extends StatefulWidget {
  const GlobalSwitch({Key? key}) : super(key: key);

  @override
  _GlobalSwitchState createState() => _GlobalSwitchState();
}

class _GlobalSwitchState extends State<GlobalSwitch> {
  late bool isOn;

  @override
  void initState() {
    isOn = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: (bool _value) {
        setState(() {
          isOn = _value;
        });
      },
      value: isOn,
    );
  }
}
