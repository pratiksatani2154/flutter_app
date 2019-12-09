import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/resources/custome.dart';

class CustomAppBar extends StatelessWidget {
  String mTitle;

  CustomAppBar(String s) {
    this.mTitle = s;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return AppBar(
        title: Text(
      mTitle,
      style: MyThemes.style18,
    ));
  }
}
