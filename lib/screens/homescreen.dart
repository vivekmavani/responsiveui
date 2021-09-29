import 'package:flutter/material.dart';
import 'package:respocivelayout/model/list.dart';
import 'package:respocivelayout/model/user_model.dart';
import 'package:respocivelayout/screens/desktopscreen.dart';
import 'package:respocivelayout/screens/displaylistitem.dart';
import 'package:respocivelayout/widget/responsive.dart';

/*class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          title: const Text('Users'),
        ),
        body:  _buildListView(context),
    );

  }
}*/
/*Widget _buildListView(BuildContext context) {
  return ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
          onTap: () {
            Responsive.isMobile(context) == true ?
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  DisplayItemScreen(user : onlineUsers[index]);
            })) :DisplayItemScreen(user : onlineUsers[index]);
          },
          title:Text(onlineUsers[index].name)
      );
    },
    itemCount: onlineUsers.length,
  );
}*/

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Users'),
      ),
      body:     ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
              onTap: () {
                setState(() {
                  Responsive.isMobile(context) == true ?
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  DisplayItemScreen(user : onlineUsers[index]);
                  })) : DisplayItemScreen(user : onlineUsers[index]);
                });
              },
              title:Text(onlineUsers[index].name)
          );
        },
        itemCount: onlineUsers.length,
      ),
    );


  }
}


