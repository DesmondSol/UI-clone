import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  @override
  ToggleClass createState() => new ToggleClass();
}

class ToggleClass extends State {
  late List<bool> selection;

  @override
  void initState() {
    selection = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ToggleButtons(
      disabledColor: Colors.grey[200]!.withOpacity(0.5),
      selectedColor: Colors.white,
      fillColor: Colors.blue,
      borderRadius: BorderRadius.circular(100),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.male,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.female),
        ),
      ],
      onPressed: (int index) {
        setState(() {
          for (int i = 0; i < selection.length; i++) {
            selection[i] = i == index;
          }
        });
      },
      isSelected: selection,
    )
        // )
        // Switch(
        //   value: isSwitched,
        //   activeColor: Colors.black,
        //   inactiveTrackColor: Colors.grey[200]!.withOpacity(0.5),
        //   onChanged: (value) {
        //     print("VALUE : $value");
        //     setState(() {
        //       isSwitched = value;
        //     });
        //   },
        // )
        );
  }
}
