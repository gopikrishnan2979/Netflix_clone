import 'package:flutter/material.dart';
import 'package:netflics/screen/new_and_hot/widgetsnew_&hot/tab_bar_view1.dart';

class NewAndHotScrn extends StatelessWidget {
  const NewAndHotScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('New & Hot'),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 3),
                child: GestureDetector(
                  onTap: () {},
                  child: const Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Icon(
                          Icons.notifications,
                          size: 35,
                        ),
                      ),
                      Positioned(
                          top: 8,
                          left: 15,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.red,
                            child: Text(
                              '50',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                          ))
                    ],
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
              ),
            )
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                height: 34,
                text: '🍿Coming Soon',
              ),
              Tab(
                height: 34,
                text: "🔥Everyone's watching",
              ),
            ],
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
          ),
        ),
        body: TabBarView(children: [TabBarView1()]),
      ),
    );
  }
}
