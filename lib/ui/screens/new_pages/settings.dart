import 'package:maseriya/ui/widgets/toggle_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
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
        return Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Display passed data from first screen
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 5, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(CupertinoIcons.chevron_left),
                    iconSize: 40,
                    visualDensity:
                        const VisualDensity(horizontal: -0.5, vertical: -1),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text("Settings",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 47,
                            color: Color.fromRGBO(4, 7, 32, 1))),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: const Text("Account",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Color.fromRGBO(4, 7, 32, 1))),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: ListTile(
                      onTap: () {},
                      leading: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            color: Colors.grey[200]!.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(100)),
                        height: 60,
                        width: 60,
                        child: const Icon(
                          CupertinoIcons.person_alt,
                          size: 35,
                          color: Colors.grey,
                        ),
                      ),
                      title: const Text(
                        "David Clerisseau",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      subtitle: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 5,
                        children: const [
                          Text(
                            "Personal Info",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      trailing: Wrap(
                        spacing: 10,
                        direction: Axis.vertical,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.grey[200]!.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10)),
                            height: 60,
                            width: 60,
                            child: Icon(
                              Icons.chevron_right,
                              size: 24,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: const Text("Settings",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color.fromRGBO(4, 7, 32, 1))),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {},
                          leading: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.orange[200]!.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(100)),
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.translate,
                              color: Colors.deepOrange[300],
                              size: 29,
                            ),
                          ),
                          title: const Text(
                            "Language",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          trailing: Wrap(
                            spacing: 10,
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Flex(
                                direction: Axis.horizontal,
                                children: [
                                  Center(
                                    child: Text(
                                      "English",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(width: 40),
                                  Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                        color:
                                            Colors.grey[200]!.withOpacity(0.5),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    height: 50,
                                    width: 50,
                                    child: Icon(
                                      Icons.chevron_right,
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        ListTile(
                          onTap: () {},
                          leading: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.lightBlue[200]!.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(100)),
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.notifications,
                              color: Colors.lightBlue[300],
                              size: 29,
                            ),
                          ),
                          title: const Text(
                            "Notifications",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          trailing: Wrap(
                            spacing: 10,
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              SizedBox(width: 40),
                              Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200]!.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 50,
                                width: 50,
                                child: Icon(
                                  Icons.chevron_right,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        ListTile(
                          onTap: () {},
                          leading: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.purple[200]!.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(100)),
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.dark_mode,
                              color: Colors.purple[300],
                              size: 29,
                            ),
                          ),
                          title: const Text(
                            "Dark Mode",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          trailing: Wrap(
                            spacing: 10,
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              ToggleSwitch()
                              // SizedBox(width: 40),
                              // Container(
                              //   clipBehavior: Clip.antiAlias,
                              //   decoration: BoxDecoration(
                              //       color: Colors.grey[200]!.withOpacity(0.5),
                              //       borderRadius: BorderRadius.circular(10)),
                              //   height: 50,
                              //   width: 50,
                              //   child: Icon(
                              //     Icons.chevron_right,
                              //     size: 24,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        ListTile(
                          onTap: () {},
                          leading: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.red[200]!.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(100)),
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.support,
                              color: Colors.red[300],
                              size: 29,
                            ),
                          ),
                          title: const Text(
                            "Notifications",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          trailing: Wrap(
                            spacing: 10,
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              SizedBox(width: 40),
                              Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200]!.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 50,
                                width: 50,
                                child: Icon(
                                  Icons.chevron_right,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
