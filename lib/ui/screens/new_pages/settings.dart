import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  // Declare a field that holds the Person data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[30],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[30],
        foregroundColor: Colors.blueGrey[30],
        title: Text("Results"),
        brightness: Brightness.dark,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            height: 70.0,
            child: SizedBox.fromSize(
              size: Size(70, 70), // button width and height
              child: ClipOval(
                child: Material(
                  color: Colors.blueGrey, // button color
                  child: InkWell(
                    splashColor: Colors.blueAccent,
                    // splash color
                    onTap: () => Navigator.pop(context),
                    // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                        ), // icon
                        Text(
                          "Back",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ), // text
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
