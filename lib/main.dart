import 'package:flutter/material.dart';
import 'package:navigation_menu_app/MenuBar.dart';
import 'MainDrawer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        backgroundColor: Colors.redAccent,
        actions: [
          Custom_MenuBar()
        ],
      ),
      body: Center(child: Text(
        'home page.',
        style: TextStyle(fontSize: 20.0),
      )
      ),
      drawer: MainDrawer(),
    );
  }
}
