import 'package:flutter/material.dart';
import 'package:respocivelayout/model/list.dart';
import 'package:respocivelayout/model/user_model.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return WideLayout();
          } else {
            return NarrowLayout();
          }
        },
      ),
    );
  }
}

class WideLayout extends StatefulWidget {
  @override
  _WideLayoutState createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
    User? _person;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PeopleList(
              onPersonTap: (person) => setState(() => _person = person)),
          flex: 2,
        ),
        Expanded(
          child: _person == null ? const Placeholder() : PersonDetail(_person!),
          flex: 3,
        ),
      ],
    );
  }
}

class NarrowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PeopleList(
      onPersonTap: (person) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(),
            body: PersonDetail(person),
          ),
        ),
      ),
    );
  }
}

class PeopleList extends StatelessWidget {
  final void Function(User) onPersonTap;

  const PeopleList({required this.onPersonTap});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        for (var person in onlineUsers)
          ListTile(
            leading: Image.network(person.imageUrl),
            title: Text(person.name),
            onTap: () => onPersonTap(person),
          ),
      ],
    );
  }
}

class PersonDetail extends StatelessWidget {
  final User person;

  const PersonDetail(this.person);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(person.name),
        ],
      ),
    );
  }
}