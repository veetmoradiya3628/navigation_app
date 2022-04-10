import 'package:flutter/material.dart';

import 'MainDrawer.dart';
import 'MenuBar.dart';

class Contact_Us extends StatefulWidget {
  const Contact_Us({Key key}) : super(key: key);

  @override
  _Contact_UsState createState() => _Contact_UsState();
}

class _Contact_UsState extends State<Contact_Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("contact us"),
        backgroundColor: Colors.redAccent,
        actions: [
          Custom_MenuBar()
        ],
      ),
      body: Center(child: Text(
        'contact us page',
        style: TextStyle(fontSize: 20.0),
      )
      ),
      drawer: MainDrawer(),
    );
  }
}
