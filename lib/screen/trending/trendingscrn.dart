import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflics/screen/homescreen.dart';
import 'package:netflics/trending/httpfunctions/trending_functions.dart';
import 'package:netflics/trending/modal/trending_modal/trending_modal.dart';

class TrendingScrn extends StatelessWidget {
  const TrendingScrn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<TrendingModal>? trendinglist;
    return FutureBuilder(
      future: getalltrending(apikey),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          trendinglist = snapshot.data!.data;
        }

        if (trendinglist != null) {
          for (TrendingModal item in trendinglist!) {
            if (item.posterPath != null &&
                !pageviewlist.value.contains(item.posterPath)) {
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
                    ? const SizedBox(
                        child: Center(child: CircularProgressIndicator()))
                    : trendinglist?[index].backdropPath != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              imagepath + trendinglist![index].posterPath!,
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
