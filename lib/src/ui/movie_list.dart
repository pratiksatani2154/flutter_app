import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/blocs/movies_bloc.dart';
import 'package:flutter_app/src/models/item_model.dart';

import 'drawer.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MoviesBloc moviesBloc = MoviesBloc();
    moviesBloc.fetchAllMovies();
    return Scaffold(
      drawer: DrawerList(),
      appBar: AppBar(
        title: Text('Popular Movies'),
      ),
      body: StreamBuilder(
        stream: moviesBloc.allMovies,
        builder: (context, AsyncSnapshot<ItemModel> snapshot) {
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildList(AsyncSnapshot<ItemModel> snapshot) {
    return GridView.builder(
        itemCount: snapshot.data.results.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4,
            margin: new EdgeInsets.all(2),
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://image.tmdb.org/t/p/w185${snapshot.data.results[index].poster_path}',
                  height: 130,
                  width: 130,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                ),
                Text(
                  snapshot.data.results[index].title,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )
              ],
            ),
          );
        });
  }
}
