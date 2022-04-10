import 'package:flutter/material.dart';
import 'contact_us.dart';
import 'main.dart';
import 'settings.dart';

class MainDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
            accountName: Text("Veet Moradiya"),
            accountEmail: Text("19it069@chaurusat.edu.in"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "V",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home), title: Text("Home"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings), title: Text("Settings"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts), title: Text("Contact Us"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contact_Us()),
              );
            },
          ),
        ],
      ),
    );
  }
}
