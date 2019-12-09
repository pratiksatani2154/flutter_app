import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/resources/custome.dart';
import 'package:flutter_app/src/ui/movie_list.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Column(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      "user_image.jpg",
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Text(
                    "BHOOMIKA",
                    style: MyThemes.style18,
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(color: Colors.amber),
          ),
          ListTile(
            title: Text('API LIST EXAMPLE'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                PageRouteBuilder(pageBuilder: (context, _, __) {
                  return MovieList();
                }, transitionsBuilder: (_, __, ___, Widget child) {
                  return child;
                }),
              );
            },
          ),
          ListTile(
            title: Text('All WIDGET'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, _, __) {
                    return MovieList();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
