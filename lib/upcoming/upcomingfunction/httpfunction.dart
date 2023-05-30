import 'dart:convert';
import 'package:netflics/screen/homescreenfolder/homescreen.dart';
import 'package:netflics/upcoming/modal/upcoming_modal/upcoming_model.dart';
import 'package:netflics/upcoming/modal/upcoming_model_list/upcoming_model_list.dart';
import 'package:http/http.dart' as http;

Future<List<UpcomingModal>> getAllUpcoming() async {
  String baseurl = 'https://api.themoviedb.org/3/movie/upcoming?api_key=';
  final response = await http.get(Uri.parse(baseurl + apikey));
  if (response.statusCode == 200) {
    final value = jsonDecode(response.body) as Map<String, dynamic>;
    final data = UpcomingModalList.fromJson(value);
    return data.data ?? [];
  }
  return [];
}
