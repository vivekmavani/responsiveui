import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:respocivelayout/model/list.dart';
import 'package:respocivelayout/model/user_model.dart';
import 'package:respocivelayout/screens/displaylistitem.dart';
import 'package:respocivelayout/screens/homescreen.dart';
import 'package:respocivelayout/widget/responsive.dart';

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

  User? user;
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
          child: homeListView(),
        ),
        Expanded(
          flex: 2,
          child: DetailsView(user: widget.user == null ? onlineUsers.first : widget.user),
        ),
      ],
    );
  }

  Widget homeListView (){
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
                  })) : DetailsView(user: onlineUsers[index]);
                });
              },
              title:Text(onlineUsers[index].name)
          );
        },
        itemCount: onlineUsers.length,
      ),
    );
  }

  Widget DetailsView({User? user}){
    widget.user = user;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title : const Text('Details'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(user!.imageUrl,),
              radius: 60.0,
            ),
            Text(user.name, style: Theme.of(context).textTheme.headline6,),
          ],
        ),
      ),
    );
  }
}




