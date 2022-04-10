import 'package:flutter/material.dart';
import 'MainDrawer.dart';
import 'MenuBar.dart';

class Settings extends StatefulWidget {
  const Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
          backgroundColor: Colors.redAccent,
          actions: [
            Custom_MenuBar()
          ],
        ),
        body: Center(child: Text(
          'settings page',
          style: TextStyle(fontSize: 20.0),
        )
        ),
      drawer: MainDrawer(),
    );
  }
}

