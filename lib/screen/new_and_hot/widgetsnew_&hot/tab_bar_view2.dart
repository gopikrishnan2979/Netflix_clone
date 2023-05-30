import 'package:flutter/material.dart';
import 'package:netflics/screen/homescreenfolder/homescreen.dart';
import 'package:netflics/upcoming/modal/upcoming_modal/upcoming_model.dart';
import 'package:netflics/upcoming/upcomingfunction/httpfunction.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarView2 extends StatelessWidget {
  const TabBarView2({super.key});

  @override
  Widget build(BuildContext context) {
    List<UpcomingModal>? upcominglist;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: FutureBuilder(
            future: getAllUpcoming(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                upcominglist = snapshot.data;
                List<UpcomingModal> templist = [];
                for (int i = upcominglist!.length - 1; i > -1; i--) {
                  templist.add(upcominglist![i]);
                }
                upcominglist = templist;
              }
              return ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      child: snapshot.connectionState == ConnectionState.waiting
                          ? const SizedBox()
                          : upcominglist?[index] != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.network(
                                          imagepath +
                                              upcominglist![index].backdropath!,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 260,
                                                child: Text(
                                                  upcominglist![index].title ??
                                                      "Loading...",
                                                  style: GoogleFonts
                                                      .robotoCondensed(
                                                    textStyle: const TextStyle(
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        fontSize: 25),
                                                  ),
                                                ),
                                              ),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.add,
                                                    size: 30,
                                                  )),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.send,
                                                    size: 25,
                                                  )),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.more_horiz,
                                                    size: 25,
                                                  ))
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          upcominglist?[index].overview ??
                                              'loading...',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w200),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              : const Text("Couldn't find"),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  itemCount: upcominglist?.length ?? 0);
            },
          )),
    );
  }
}
