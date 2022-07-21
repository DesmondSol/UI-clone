import 'package:flutter/material.dart';

class ToggleSwitch extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;

  switchtext(bool switchValue) {
    if (switchValue == false) {
      return Text('Off', style: TextStyle(color: Colors.grey));
    } else {
      return Text(
        'On',
        style: TextStyle(color: Colors.grey),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          switchtext(isSwitched),
          SizedBox(
            width: 40.0,
          ),
          Switch(
            value: isSwitched,
            activeColor: Colors.black,
            inactiveTrackColor: Colors.grey[200]!.withOpacity(0.5),
            onChanged: (value) {
              print("VALUE : $value");
              setState(() {
                isSwitched = value;
              });
            },
          )
        ]);
  }
}
