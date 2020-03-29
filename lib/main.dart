import 'package:flutter/material.dart';
import 'package:neumorphic_design_app/sidebar/sidebar_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphic Design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Text(
                "Hello!",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              Text(
                "Tarciso Torres",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.w800
                ),
              )
            ],
          ),
        ),
      ),
      endDrawer: SidebarLayout(),
    );
  }
}
