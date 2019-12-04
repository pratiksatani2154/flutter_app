import 'package:flutter_app/src/models/item_model.dart';
import 'package:flutter_app/src/resources/movie_api_provider.dart';

class Repository {
  final movieApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => movieApiProvider.fetchMovieList();
}
