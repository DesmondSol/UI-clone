import 'package:demo/ui/widgets/toggle_button_widget.dart';
import 'package:demo/ui/widgets/toggle_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  // Declare a field that holds the Person data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.blueGrey[30],
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   // foregroundColor: Colors.blueGrey[30],
      // ),
      body: Builder(builder: (context) {
        return ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Display passed data from first screen
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 5, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(CupertinoIcons.chevron_left),
                        iconSize: 40,
                        visualDensity:
                            const VisualDensity(horizontal: -0.5, vertical: -1),
                      ),
                      InkWell(
                        onTap: () {
                          Scaffold.of(context).showSnackBar(SnackBar(
                              duration: const Duration(milliseconds: 500),
                              margin: const EdgeInsets.all(10),
                              elevation: 0,
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Theme.of(context).primaryColor,
                              content: const Text("Data Saved")));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.lightBlueAccent,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 10,
                                  offset: const Offset(2, 2))
                            ],
                          ),
                          // border: Border.all(width: 3, color: Colors.white),
                          // color: Color(0xffd1c4e9),
                          // borderRadius: BorderRadius.circular(10)),
                          height: 55,
                          width: 55,
                          child: const Center(
                            child: Icon(
                              CupertinoIcons.checkmark,
                              // Icons.done,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text("Account",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 58,
                            color: Color.fromRGBO(4, 7, 32, 1))),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Row(
                      children: [
                        Column(children: [
                          Text(
                            "Photo",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ]),
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300]!.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(100)),
                                  height: 90,
                                  width: 90,
                                  child: const Icon(CupertinoIcons.person_alt,
                                      size: 60, color: Colors.grey),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Upload Image",
                                  style: TextStyle(
                                      color: Colors.lightBlueAccent,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, right: 30),
              child: Row(
                children: [
                  Column(children: [
                    Text(
                      "Name",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ]),
                  SizedBox(width: 40),
                  Expanded(
                    child: Center(
                        child: TextFormField(
                      scrollPadding: EdgeInsets.only(left: 55),
                      style: TextStyle(
                        // fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, right: 30),
              child: Row(
                children: [
                  Column(children: [
                    Text(
                      "Gender",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ]),
                  SizedBox(width: 30),
                  Expanded(
                    child: Center(child: ToggleButton()),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, right: 30),
              child: Row(
                children: [
                  Column(children: [
                    Text(
                      "Age",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ]),
                  SizedBox(width: 57),
                  Expanded(
                    child: Center(
                        child: TextFormField(
                      scrollPadding: EdgeInsets.only(left: 55),
                      style: TextStyle(
                        // fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, right: 30),
              child: Row(
                children: [
                  Column(children: [
                    Text(
                      "Email",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ]),
                  SizedBox(width: 42),
                  Expanded(
                    child: Center(
                        child: TextFormField(
                      scrollPadding: EdgeInsets.only(left: 55),
                      style: TextStyle(
                        // fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        );
      }),
    );
  }
}

// import 'package:flutter/material.dart';

// class Settings extends StatelessWidget {
//   // Declare a field that holds the Person data

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[30],
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey[30],
//         foregroundColor: Colors.blueGrey[30],
//         title: Text("Results"),
//         brightness: Brightness.dark,
//       ),
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.all(10),
//             height: 70.0,
//             child: SizedBox.fromSize(
//               size: Size(70, 70), // button width and height
//               child: ClipOval(
//                 child: Material(
//                   color: Colors.blueGrey, // button color
//                   child: InkWell(
//                     splashColor: Colors.blueAccent,
//                     // splash color
//                     onTap: () => Navigator.pop(context),
//                     // button pressed
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.arrow_back_ios_new_rounded,
//                           color: Colors.white,
//                         ), // icon
//                         Text(
//                           "Back",
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.white,
//                           ),
//                         ), // text
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }
