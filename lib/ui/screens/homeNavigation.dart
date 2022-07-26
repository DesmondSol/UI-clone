import 'package:maseriya/ui/widgets/bottom-nav-widget.dart';
import 'package:flutter/material.dart';
import 'package:maseriya/utils/ui/side_menu.dart';
import 'package:maseriya/utils/ui/swipe_animation.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomeNavigation extends StatefulWidget {
  const MyHomeNavigation({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomeNavigation> createState() => _MyHomeNavigationState();
}

class _MyHomeNavigationState extends State<MyHomeNavigation>
    with SingleTickerProviderStateMixin {
  int currentPage = 0;
  late Animation<double> animation;
  late AnimationController controller;
  bool isNavigationDrawerOpened = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  GlobalKey<SwipeAnimationState> swipeAnimationKey = new GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    animation = Tween<double>(begin: 0, end: 1).animate(controller);
    controller.forward();
  }

  // Navigator.push(
  //     context,
  //     new MaterialPageRoute(
  //         builder: (context) => Results(
  //               n1: n1,
  //               n2: n2,
  //               N1: N1,
  //               N2: N2,
  //             )));
  //   widget.addtx(enteredTitle, enteredAmnt, _selectedDate);
  //Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 173, 151, 211),
      body: Container(
        // Add box decoration
        decoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.deepPurple[700]!,
              Colors.deepPurple[400]!,
              Colors.deepPurple[200]!,
              Colors.deepPurple[100]!,
            ],
          ),
        ),

        child: Stack(
          children: <Widget>[
            SideMenu(
              onMenuItemSelection: (pageIndex) {
                swipeAnimationKey.currentState?.hideNavigationDrawer();
                setState(() {
                  currentPage = pageIndex;
                });
              },
            ),
            SwipeAnimation(
                key: swipeAnimationKey,
                navigationDrawerOpened: (isOpened) {
                  isNavigationDrawerOpened = isOpened;
                  if (isNavigationDrawerOpened) {
                    controller.reverse();
                  } else {
                    controller.forward();
                  }
                },
                child: Scaffold(
                    backgroundColor: Colors.deepPurpleAccent[50],
                    key: _scaffoldKey,
                    // appBar: AppBar(
                    //   brightness: Brightness.dark,
                    //   leading: IconButton(
                    //     icon: AnimatedIcon(
                    //       icon: AnimatedIcons.arrow_menu,
                    //       progress: animation,
                    //     ),
                    //     onPressed: () {
                    //       if (isNavigationDrawerOpened) {
                    //         controller.reverse();
                    //         swipeAnimationKey.currentState
                    //             ?.hideNavigationDrawer();
                    //       } else {
                    //         controller.forward();
                    //         swipeAnimationKey.currentState
                    //             ?.showNavigationDrawer();
                    //       }
                    //     },
                    //   ),
                    //   //title: Text("menuItems[currentPage].menuName"),
                    //   backgroundColor: Theme.of(context).primaryColor,

                    //   // leading: Icon(Icons.access_time_sharp),
                    //   // leadingWidth: 70,
                    //   title: const Text('UI clone pages'),
                    // ),
                    body: BottomNavigationWidget()
                    // SafeArea(
                    //   child: Center(
                    //     child: Column(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Text("Welcome to my app"),
                    //         Text(
                    //             "swipe right to access the menu to navigate to the other pages"),
                    //         Container(
                    //           child: Wrap(
                    //             children: [
                    //               Icon(Icons.select_all),
                    //               Text("Enjoy"),
                    //               Icon(Icons.select_all),
                    //             ],
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    ))
          ],
        ),
      ),
    );
  }
}
