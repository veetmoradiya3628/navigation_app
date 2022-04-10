import 'package:flutter/material.dart';
import 'package:navigation_menu_app/contact_us.dart';
import 'package:navigation_menu_app/main.dart';
import 'package:navigation_menu_app/settings.dart';

class Custom_MenuBar extends StatelessWidget {
  const Custom_MenuBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      // add icon, by default "3 dot" icon
      // icon: Icon(Icons.book)
        itemBuilder: (context){
          return [
            PopupMenuItem<int>(
              value: 0,
              child: Text("My Account"),
            ),

            PopupMenuItem<int>(
              value: 1,
              child: Text("Settings"),
            ),

            PopupMenuItem<int>(
              value: 2,
              child: Text("Contact Us"),
            ),
          ];
        },
        onSelected:(value){
          if(value == 0){
            print("My account menu is selected.");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          }else if(value == 1){
            print("Settings menu is selected.");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Settings()),
            );
          }else if(value == 2){
            print("Logout menu is selected.");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Contact_Us()),
            );
          }
        }
    );
  }
}

