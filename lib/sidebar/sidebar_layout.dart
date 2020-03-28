import 'package:flutter/material.dart';
import 'package:neumorphic_design_app/sidebar/sidebar_item.dart';

class SidebarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          width: 60,
          top: 0,
          bottom: 0,
          right: 0,
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
        Positioned(
            top: 0,
            bottom: 0,
            right: -25,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
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
                        onTabTap: () {},
                        isSelected: true,
                      ),
                      SidebarItem(
                        text: "Restaurants",
                        onTabTap: () {},
                        isSelected: false,
                      ),
                      SidebarItem(
                        text: "My Cart",
                        onTabTap: () {},
                        isSelected: false,
                      ),
                      SidebarItem(
                        text: "My Profile",
                        onTabTap: () {},
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ]
      );
  }
}