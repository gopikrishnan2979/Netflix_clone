import 'package:flutter/material.dart';
import 'package:netflics/screen/homescreenfolder/homescreen.dart';
import 'package:netflics/upcoming/modal/upcoming_modal/upcoming_model.dart';
import 'package:netflics/upcoming/upcomingfunction/httpfunction.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarView1 extends StatelessWidget {
  const TabBarView1({super.key});

  @override
  Widget build(BuildContext context) {
    List<UpcomingModal>? upcominglist;
    return Scaffold(
        backgroundColor: Colors.black,
        body: FutureBuilder(
          future: getAllUpcoming(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              upcominglist = snapshot.data!.data;
            }
            return ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    // color: Colors.grey[900],
                    height: 400,
                    child: snapshot.connectionState == ConnectionState.waiting
                        ? const SizedBox()
                        : upcominglist?[index] != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.network(
                                            imagepath +
                                                upcominglist![index]
                                                    .backdropath!,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 250,
                                                  child: Text(
                                                    upcominglist![index]
                                                            .title ??
                                                        "Loading...",
                                                    style: GoogleFonts
                                                        .robotoCondensed(
                                                      textStyle:
                                                          const TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              fontSize: 30),
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      Icons.notifications_none,
                                                      size: 30,
                                                    )),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      Icons.info_outline,
                                                      size: 30,
                                                    ))
                                              ],
                                            ),
                                          ),
                                          Text ('Coming on ${(upcominglist?[index].releasedate??"...")}'),
                                          Text(upcominglist?[index].overview??'loading...')
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            : const Text("Couldn't find"),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: upcominglist?.length ?? 0);
          },
        ));
  }
}
