import 'package:flutter/material.dart';
import 'package:netflics/screen/homescreenfolder/pageview.dart';
import 'package:netflics/screen/homescreenfolder/popular/popular_scrn.dart';
import 'package:netflics/screen/homescreenfolder/top_rated_tvshow/topratedscrn.dart';
import 'package:netflics/screen/homescreenfolder/trending/trendingscrn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

const String imagepath = 'https://image.tmdb.org/t/p/w500';

const String apikey = "329bc35423a1fd39df7f740e6ff90c85";
ValueNotifier<List<String>> pageviewlist = ValueNotifier([]);

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: SingleChildScrollView(
            child: ValueListenableBuilder(
                valueListenable: pageviewlist,
                builder: (context, value, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      pageviewlist.value.isEmpty
                          ? const SizedBox(
                              height: 500,
                              child: Center(child: CircularProgressIndicator()),
                            )
                          : const ImageChange(),
                      const SizedBox(
                        height: 13,
                      ),
                      const Text(
                        'Trending Now',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const SizedBox(height: 190, child: TrendingScrn()),
                      const SizedBox(
                        height: 13,
                      ),
                      const Text(
                        'Popular',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const SizedBox(height: 190, child: PopularScrn()),
                      const SizedBox(
                        height: 13,
                      ),
                      const Text(
                        'Top Rated Tv Shows',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const SizedBox(height: 190, child: TopTvShowScrn()),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  );
                })),
      ),
    );
  }
}
