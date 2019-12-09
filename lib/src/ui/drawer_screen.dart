import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/resources/custome.dart';
import 'package:flutter_app/src/ui/appbar.dart';
import 'package:flutter_app/src/ui/drawer.dart';
import 'package:flutter_app/src/ui/movie_list.dart';
import 'package:toast/toast.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(title: Text("Home")),
        drawer: DrawerList(),
        body: new Container(
            child: Center(
          child: Text(
            "My App",
            style: TextStyle(fontFamily: 'lob_reg'),
          ),
        )),
      ),
    );
  }
}
