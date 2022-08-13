import 'package:demo/ui/screens/auth_pages/welcomePage.dart';
import 'package:demo/ui/widgets/bottom-nav-widget.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:demo/utils/ui/side_menu.dart';
import 'package:demo/utils/ui/swipe_animation.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UI clone',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
            bodyText1: GoogleFonts.montserrat(textStyle: textTheme.bodyText1),
          ),
        ),
        home: WelcomePage(
          title: "welcome page",
        )
        //const MyHomePage(title: 'home page'),
        );
  }
}
