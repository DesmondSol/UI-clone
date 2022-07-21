import 'package:demo/ui/screens/profile/community-page.dart';
import 'package:demo/ui/screens/profile/personal-data.dart';
import 'package:demo/ui/screens/profile/settings-page.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _current = 0;

  List<String> _titles = ["Settings", "Personal Data", "Community"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          _titles[_current],
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.help_outline_sharp,
              color: Colors.black,
            ),
            tooltip: 'Help',
            onPressed: () {
              final snackBar = SnackBar(
                content: Text(
                  'by Solomon T',
                  textAlign: TextAlign.center,
                ),
                backgroundColor: Theme.of(context).primaryColor,
                //      duration: Duration(milliseconds: 200),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              // Scaffold.of(context).showSnackBar(SnackBar(
              //     duration: Duration(milliseconds: 500),
              //     margin: EdgeInsets.all(10),
              //     elevation: 0,
              //     behavior: SnackBarBehavior.floating,
              //     backgroundColor: Theme.of(context).primaryColor,
              //     content: Text("by Solomon T")));
            },
          ),
        ],
      ),
      body: [SettingsPage(), PersonalDataScreen(), CommunityPage()][_current],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepPurpleAccent,
          unselectedItemColor: Colors.black26,
          currentIndex: _current,
          onTap: (index) {
            setState(() {
              _current = index;
            });
          },
          items: [
            BottomNavigationBarItem(label: "", icon: Icon(Icons.settings)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.person)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.group)),
          ]),
    );
  }
}
