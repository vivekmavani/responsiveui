import 'package:flutter/material.dart';
import 'package:respocivelayout/model/user_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
class DisplayItemScreen extends StatelessWidget {
  final User user;
  const DisplayItemScreen({required this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : const Text('Details'),),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(user.imageUrl,),
              radius: 60.0,
            ),
            Text(user.name, style: Theme.of(context).textTheme.headline6,),
          ],
        ),
      ),
    );
  }
}
