import 'package:flutter/material.dart';
import 'package:respocivelayout/model/list.dart';
import 'package:respocivelayout/model/user_model.dart';
import 'package:respocivelayout/screens/displaylistitem.dart';
import 'package:respocivelayout/screens/homescreen.dart';

/*class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: HomeScreen(),
        ),
        Expanded(
          flex: 2,
          child: DisplayItemScreen(user: onlineUsers.first),
        ),
      ],
    );
  }
}*/
class DesktopScreen extends StatefulWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  _DesktopScreenState createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
     return Row(
      children: [
        Expanded(
          flex: 1,
          child: HomeScreen(),
        ),
        Expanded(
          flex: 2,
          child: DisplayItemScreen(user: onlineUsers.first),
        ),
      ],
    );
  }
}
