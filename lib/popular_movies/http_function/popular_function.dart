import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflics/popular_movies/modal/popular_movies/popular_movies.dart';
import 'package:netflics/popular_movies/modal/popular_movies_list/popular_movies_list.dart';

Future<List<PopularMovies>> getallPopularmovies(String key) async {
  String baseurl = 'https://api.themoviedb.org/3/movie/popular?api_key=';
  final response = await http.get(Uri.parse(baseurl + key));
  if (response.statusCode == 200) {
    final value = jsonDecode(response.body) as Map<String, dynamic>;
    final data = PopularMoviesList.fromJson(value);
    return data.data ?? [];
  }
  return [];
}
