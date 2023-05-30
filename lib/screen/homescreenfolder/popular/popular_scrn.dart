import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflics/popular_movies/http_function/popular_function.dart';
import 'package:netflics/popular_movies/modal/popular_movies/popular_movies.dart';
import 'package:netflics/screen/homescreenfolder/homescreen.dart';

class PopularScrn extends StatelessWidget {
  const PopularScrn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<PopularMovies>? popularlist;
    return FutureBuilder(
      future: getallPopularmovies(apikey),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          popularlist = snapshot.data;
        }

        if (popularlist != null) {
          for (PopularMovies item in popularlist!) {
            if (item.posterPath != null &&
                !pageviewlist.value.contains(item.posterPath) &&
                pageviewlist.value.length < 3) {
              pageviewlist.value.add(item.posterPath!);
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
                    ? const SizedBox()
                    : popularlist?[index].posterPath != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              imagepath + popularlist![index].posterPath!,
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
                : popularlist?.length ?? 0);
      },
    );
  }
}
