import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflics/screen/homescreenfolder/homescreen.dart';
import 'package:netflics/top_tv_shows/modal/tvshow_list_modal/top_tvshow_list_modal.dart';

Future<TopTvShowList> getAllTopTvshow() async {
  String baseurl = 'https://api.themoviedb.org/3/tv/top_rated?api_key=';
  final response = await http.get(Uri.parse(baseurl + apikey));
  final value = jsonDecode(response.body) as Map<String, dynamic>;
  return TopTvShowList.fromJson(value);
}
