import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflics/trending/modal/trending_modal/trending_modal.dart';
import 'package:netflics/trending/modal/trending_modal_list/trendinglist_modal.dart';

Future<List<TrendingModal>> getalltrending(String key) async {
  String baseurl = 'https://api.themoviedb.org/3/trending/all/week?api_key=';
  final response = await http.get(Uri.parse(baseurl + key));
  if (response.statusCode == 200) {
    final value = jsonDecode(response.body) as Map<String, dynamic>;
    final data = Getalltrending.fromJson(value);
    return data.data??[];
  }
  return [];
}
