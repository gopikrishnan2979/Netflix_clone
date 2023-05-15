import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflics/screen/homescreenfolder/homescreen.dart';
import 'package:netflics/top_tv_shows/modal/tv_show_modal/top_tvshow_modal.dart';
import 'package:netflics/top_tv_shows/tv_show_function/httpfunction.dart';
import 'package:netflics/trending/httpfunctions/trending_functions.dart';
import 'package:netflics/trending/modal/trending_modal/trending_modal.dart';

class TopTvShowScrn extends StatelessWidget {
  const TopTvShowScrn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<TopTvShows>? trendinglist;
    return FutureBuilder(
      future: getAllTopTvshow(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          trendinglist = snapshot.data!.data;
        }

        if (trendinglist != null) {
          for (TopTvShows item in trendinglist!) {
            if (item.posterpath != null &&
                !pageviewlist.value.contains(item.posterpath)&&
                pageviewlist.value.length<=3) {
              pageviewlist.value.add(item.posterpath!);
              break;
            }
          }
          Timer(const Duration(seconds: 1), () {
            pageviewlist.notifyListeners();
          });
        }
        return ListView.separated(
            padding: const EdgeInsetsDirectional.only(start: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.black,
                // width: 150,
                child: snapshot.connectionState == ConnectionState.waiting
                    ? const SizedBox(
                        child: Center(child: CircularProgressIndicator()))
                    : trendinglist?[index].posterpath != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              imagepath + trendinglist![index].posterpath!,
                              fit: BoxFit.fill,
                            ),
                          )
                        : const Text("Couldn't find"),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
            itemCount: snapshot.connectionState == ConnectionState.waiting
                ? 10
                : trendinglist?.length ?? 0);
      },
    );
  }
}
