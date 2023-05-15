import 'package:flutter/material.dart';
import 'package:netflics/screen/homescreenfolder/homescreen.dart';

class ImageChange extends StatelessWidget {
  const ImageChange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 600,
        child: PageView(children: pageviewmaker()),
      ),
      Positioned(
          top: 10,
          child: SizedBox(
            height: 40,
            width: 40,
            child: Image.asset('assets/images/Daco_4532423.png'),
          ))
    ]);
  }

  List<Widget> pageviewmaker() {
    List<Widget> pageview = [];
    for (String path in pageviewlist.value) {
      pageview.add(pageviewprovider(imagepath + path));
    }
    return pageview;
  }

  Widget pageviewprovider(String image) {
    return Container(
        color: Colors.black,
        width: double.infinity,
        child: Image.network(
          image,
          fit: BoxFit.cover,
        ));
  }
}
