import 'package:flutter/material.dart';
import 'package:netflics/screen/homescreenfolder/homescreen.dart';
import 'package:netflics/search/search_functions.dart';
import 'package:netflics/trending/httpfunctions/trending_functions.dart';

class SearchScrn extends StatelessWidget {
  SearchScrn({super.key});
  final TextEditingController searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ValueNotifier<String> searchquerry = ValueNotifier('');
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(
              height: 80,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      searchquerry.value = value;
                      searchquerry.notifyListeners();
                    },
                    controller: searchcontroller,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                    cursorColor: const Color.fromARGB(255, 255, 255, 255),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0),
                              width: 3,
                            )),
                        hintText: 'Search',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0),
                              width: 3,
                            ))),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ValueListenableBuilder(
                    valueListenable: searchquerry,
                    builder: (context, value, child) {
                      return searchcontroller.text.trim().isEmpty
                          ? FutureBuilder(
                              future: getalltrending(apikey),
                              builder: (context, snapshot) {
                                return GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10,
                                          mainAxisExtent: 200),
                                  itemBuilder: (context, index) => Container(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    // width: 150,
                                    child: Center(
                                      child: snapshot.connectionState ==
                                              ConnectionState.waiting
                                          ? const SizedBox()
                                          : snapshot.data?[index].posterPath !=
                                                  null
                                              ? ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image.network(
                                                    imagepath +
                                                        snapshot.data![index]
                                                            .posterPath!,
                                                    fit: BoxFit.fill,
                                                  ),
                                                )
                                              : const Center(
                                                  child: Text(
                                                  "Couldn't find",
                                                )),
                                    ),
                                  ),
                                  itemCount: snapshot.data?.length ?? 0,
                                );
                              })
                          : FutureBuilder(
                              future: search(searchcontroller.text.trim()),
                              builder: (context, snapshot) {
                                return GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10,
                                          mainAxisExtent: 200),
                                  itemBuilder: (context, index) => Container(
                                    color: Colors.black,
                                    // width: 150,
                                    child: snapshot.connectionState ==
                                            ConnectionState.waiting
                                        ? const SizedBox()
                                        : snapshot.data?[index].posterPath !=
                                                null
                                            ? ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.network(
                                                  imagepath +
                                                      snapshot.data![index]
                                                          .posterPath!,
                                                  fit: BoxFit.fill,
                                                ),
                                              )
                                            : const Center(
                                                child: Text(
                                                "Couldn't find",
                                              )),
                                  ),
                                  itemCount: snapshot.data?.length ?? 0,
                                );
                              });
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
