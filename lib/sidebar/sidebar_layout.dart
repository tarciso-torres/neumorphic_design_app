import 'package:flutter/material.dart';
import 'package:neumorphic_design_app/sidebar/sidebar_item.dart';

class SidebarLayout extends StatefulWidget{
  @override
  _SidebarLayoutState createState() => _SidebarLayoutState();
}

class _SidebarLayoutState extends State<SidebarLayout> {

  int selectedIndex = 0;

  void onTabTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          width: 90,
          top: 0,
          bottom: 0,
          right: 0,
            child: ClipPath(
              clipper: SidebarClipper(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFFF559F),
                      Color(0xFFCF5CCF),
                      Color(0xFFFF57AC),
                      Color(0xFFFF6D91),
                      Color(0xFFFF8D7E),
                      Color(0xFFB6BAA6),
                    ],
                    stops: [0.05, 0.3, 0.5, 0.55, 0.8, 1],
                  ),
                ),
              ),
            ),
          ),
        Positioned(
            top: 0,
            bottom: 0,
            right: -25,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Icon(Icons.dashboard, color: Colors.white),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.search, color: Colors.white),
                SizedBox(
                  height: 100,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SidebarItem(
                        text: "Wallet",
                        onTabTap: () {
                          onTabTap(0);
                        },
                        isSelected: selectedIndex == 0,
                      ),
                      SidebarItem(
                        text: "Restaurants",
                        onTabTap: () {
                          onTabTap(1);
                        },
                        isSelected: selectedIndex == 1,
                      ),
                      SidebarItem(
                        text: "My Cart",
                        onTabTap: () {
                          onTabTap(2);
                        },
                        isSelected: selectedIndex == 2,
                      ),
                      SidebarItem(
                        text: "My Profile",
                        onTabTap: () {
                          onTabTap(3);
                        },
                        isSelected: selectedIndex == 3,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
              ],
            ),
          )
        ]
      );
  }
}

class SidebarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    double width = size.width;
    double height = size.height;

    // up curve
    path.moveTo(width, 0);
    path.quadraticBezierTo(width / 3, 5, width / 3, 70);

    // custom curve


    //down curve
    path.lineTo(width / 3, height - 70);
    path.quadraticBezierTo(width / 3, height - 5, width, height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
  
}