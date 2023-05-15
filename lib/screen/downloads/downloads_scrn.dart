import 'package:flutter/material.dart';
import 'package:netflics/screen/homescreenfolder/homescreen.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Downloads',
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 3),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search_rounded,
                    size: 35,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
              ),
            )
          ],
        ),
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.settings),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Smart Downloads'),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Introducing Downloads for You',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, left: 8, right: 8),
              child: Text(
                "We'll download a personalised selection of movies and shows for you,so there's always something to warch on your phone.",
                style: TextStyle(fontWeight: FontWeight.w100),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 350,
                ),
                Positioned(
                    left: 55,
                    top: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[700],
                      radius: 150,
                    )),
                Positioned(
                    top: 70,
                    left: 50,
                    child: Transform.rotate(
                      angle: 6,
                      child: SizedBox(
                        height: 230,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            imagepath + pageviewlist.value[0],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    top: 70,
                    left: 190,
                    child: Transform.rotate(
                      angle: 0.25,
                      child: SizedBox(
                        height: 230,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            imagepath + pageviewlist.value[1],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    top: 50,
                    left: 120,
                    child: SizedBox(
                      height: 250,
                      width: 160,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          imagepath + pageviewlist.value[2],
                          fit: BoxFit.fill,
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: const SizedBox(
                    height: 30,
                    child: Center(child: Text('Set Up')),
                  )),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[800]),
                  ),
                  onPressed: () {},
                  child: const SizedBox(
                    height: 30,
                    child: Center(child: Text('Find More to Download')),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
