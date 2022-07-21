import 'package:flutter/material.dart';

class Account extends StatelessWidget {
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
              padding: const EdgeInsets.only(top: 30, left: 5, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.chevron_left),
                        iconSize: 50,
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
                            color: Colors.blue,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.6),
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
                              Icons.done,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("Settings",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromRGBO(4, 7, 32, 1))),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Account",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Color.fromRGBO(4, 7, 32, 1))),
                  ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.account_circle,
                      size: 20,
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
                              borderRadius: BorderRadius.circular(10)),
                          height: 70,
                          width: 70,
                          child: Icon(
                            Icons.chevron_right,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text("Account",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Color.fromRGBO(4, 7, 32, 1))),
                  ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.account_circle,
                      size: 20,
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
                              borderRadius: BorderRadius.circular(10)),
                          height: 70,
                          width: 70,
                          child: Icon(
                            Icons.chevron_right,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Icon(Icons.account_circle_rounded,
            //     size: 150, color: Colors.blueGrey[50]),
            // const Text(
            //   "This App was made by:",
            //   textAlign: TextAlign.start,
            // ),
            // const Text("Solomon Tigabu : 1010981"),

            // Container(
            //   margin: EdgeInsets.all(10),
            //   height: 70.0,
            //   child: SizedBox.fromSize(
            //     size: Size(70, 70), // button width and height
            //     child: ClipOval(
            //       child: Material(
            //         color: Colors.blueGrey, // button color
            //         child: InkWell(
            //           splashColor: Colors.blueAccent,
            //           // splash color
            //           onTap: () => Navigator.pop(context),
            //           // button pressed
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: <Widget>[
            //               Icon(
            //                 Icons.home_filled,
            //                 color: Colors.white,
            //               ), // icon
            //               Text(
            //                 "Home",
            //                 style: TextStyle(
            //                   fontSize: 14,
            //                   color: Colors.white,
            //                 ),
            //               ), // text
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        );
      }),
    );
  }
}
