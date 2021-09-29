import 'package:flutter/material.dart';
import 'package:respocivelayout/screens/allinone.dart';
import 'package:respocivelayout/screens/desktopscreen.dart';
import 'package:respocivelayout/widget/responsive.dart';

import 'screens/homescreen.dart';

void main() {
  runApp(const MyApps());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
      //Responsive(desktop: DesktopScreen(),mobile: HomeScreen(),tablet: DesktopScreen(),),
    );
  }
}
class MyApps extends StatefulWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Responsive(desktop: DesktopScreen(),mobile: HomeScreen(),tablet: DesktopScreen()),

      //Responsive(desktop: DesktopScreen(),mobile: HomeScreen(),tablet: DesktopScreen(),),
    );
  }
}



