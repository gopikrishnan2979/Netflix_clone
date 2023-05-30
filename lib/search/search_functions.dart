import 'dart:convert';
import 'package:netflics/screen/homescreenfolder/homescreen.dart';
import 'package:http/http.dart' as http;
import 'package:netflics/search/modal/search_model/searchlist.dart';
import 'package:netflics/search/modal/search_value/search_value.dart';

Future<List<Search>> search(String querry) async {
  String baseurl =
      'https://api.themoviedb.org/3/search/movie?api_key=$apikey&query=';
  final response = await http.get(Uri.parse(baseurl + querry));
  if (response.statusCode == 200) {
    final value = jsonDecode(response.body) as Map<String, dynamic>;
    final data = Searchlist.fromJson(value);
    return data.data ?? [];
  }
  return [];
}
