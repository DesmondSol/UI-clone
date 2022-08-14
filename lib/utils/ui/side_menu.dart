import 'package:maseriya/ui/screens/auth_pages/Widget/title.dart';
import 'package:maseriya/ui/screens/sidebar_pages/about-us.dart';
import 'package:maseriya/ui/screens/sidebar_pages/complain.dart';
import 'package:maseriya/ui/screens/sidebar_pages/help.dart';
import 'package:flutter/material.dart';
import 'package:maseriya/ui/screens/new_pages/account.dart';
import 'package:maseriya/data/models/model.dart';
import 'package:maseriya/ui/screens/new_pages/settings.dart';

class SideMenu extends StatefulWidget {
  final Function(int) _onMenuItemSelection;

  SideMenu({
    required Function(int) onMenuItemSelection,
  }) : _onMenuItemSelection = onMenuItemSelection;

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Text(
                    'welcome',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.question_answer_outlined,
                          size: 24,
                          color: Colors.white,
                        ),

                        // Text( '₹',
                        //   textAlign: TextAlign.start,
                        //   style: TextStyle(
                        //     color: Colors.black,
                        //     fontSize: 24,
                        //   ),
                        // ),
                      ),
                      title(context, 1),
                      // Text(
                      //   'BIT',
                      //   textAlign: TextAlign.start,
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 48,
                      //   ),
                      // )
                    ],
                  ),
                ),
                SizedBox(height: 32),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GestureDetector(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              menuItems[index].menuIcon,
                              color: index == _currentPage
                                  ? Theme.of(context).primaryColor
                                  : Colors.white,
                            ),
                            SizedBox(width: 16),
                            Text(
                              menuItems[index].menuName,
                              style: TextStyle(
                                color: index == _currentPage
                                    ? Theme.of(context).primaryColor
                                    : Color.fromARGB(255, 242, 246, 248),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          widget._onMenuItemSelection(index);
                          if (index == 1) {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => Account()));
                          } else if (index == 2) {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => complain()));
                          } else if (index == 3) {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => Settings()));
                          } else if (index == 4) {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => help()));
                          } else if (index == 5) {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => aboutUs()));
                          }
                          setState(() {
                            _currentPage = index;
                            _currentPage = 0;
                          });
                        },
                      ),
                    );
                  },
                  itemCount: menuItems.length,
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }
}
