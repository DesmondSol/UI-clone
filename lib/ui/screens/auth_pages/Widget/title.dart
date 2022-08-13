import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class title extends StatelessWidget {
  var cntx, them;
  title(BuildContext context, int th) {
    cntx = context;
    if (th == 1) {
      them = Colors.white;
    } else
      them = Colors.deepPurple;
    //1 + 1 == 2 ? print('check true') : print('check false');
    //print(context.hashCode);
    // prints 2011
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Ma',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(cntx).textTheme.headline1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: them,
          ),
          children: [
            TextSpan(
              text: 'se',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'riya',
              style: TextStyle(color: them, fontSize: 30),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _title();
  }
}
