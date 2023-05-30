import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflics/screen/homescreenfolder/homescreen.dart';
import 'package:netflics/top_tv_shows/modal/tv_show_modal/top_tvshow_modal.dart';
import 'package:netflics/top_tv_shows/modal/tvshow_list_modal/top_tvshow_list_modal.dart';

Future<List<TopTvShows>> getAllTopTvshow() async {
  String baseurl = 'https://api.themoviedb.org/3/tv/top_rated?api_key=';
  final response = await http.get(Uri.parse(baseurl + apikey));
  if (response.statusCode == 200) {
    final value = jsonDecode(response.body) as Map<String, dynamic>;
    final data = TopTvShowList.fromJson(value);
    return data.data??[];
  }
  return [];
}
