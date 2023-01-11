import 'package:flutter/material.dart';

class logo extends StatefulWidget {
  @override
  State<logo> createState() => _logoState();
}

class _logoState extends State<logo> {
  List images = [
    Image.asset('assets/logo/1.png'),
    Image.asset('assets/logo/2.png'),
    Image.asset('assets/logo/3.png'),
    Image.asset('assets/logo/4.png'),
    Image.asset('assets/logo/5.png'),
    Image.asset('assets/logo/6.png'),
    Image.asset('assets/logo/7.png'),
    Image.asset('assets/logo/8.png'),
    Image.asset('assets/logo/9.png'),
    Image.asset('assets/logo/10.png'),
    Image.asset('assets/logo/11.png'),
    Image.asset('assets/logo/12.png'),
    Image.asset('assets/logo/13.png'),
    Image.asset('assets/logo/14.png'),
    Image.asset('assets/logo/15.png'),
    Image.asset('assets/logo/16.png'),
    Image.asset('assets/logo/17.png'),
    Image.asset('assets/logo/18.png'),
    Image.asset('assets/logo/19.png'),
    Image.asset('assets/logo/20.png'),
    Image.asset('assets/logo/21.png'),
    Image.asset('assets/logo/22.png'),
    Image.asset('assets/logo/23.png'),
    Image.asset('assets/logo/24.png'),
    Image.asset('assets/logo/25.png'),
    Image.asset('assets/logo/26.png'),
    Image.asset('assets/logo/27.png'),
    Image.asset('assets/logo/28.png'),
    Image.asset('assets/logo/29.png'),
    Image.asset('assets/logo/30.png'),
    Image.asset('assets/logo/31.png'),
    Image.asset('assets/logo/32.png'),
    Image.asset('assets/logo/33.png'),
    Image.asset('assets/logo/34.png'),
    Image.asset('assets/logo/35.png'),
    Image.asset('assets/logo/36.png'),
    Image.asset('assets/logo/37.png'),
    Image.asset('assets/logo/38.png'),
    Image.asset('assets/logo/39.png'),
    Image.asset('assets/logo/40.png'),
    Image.asset('assets/logo/41.png'),
    Image.asset('assets/logo/42.png'),
    Image.asset('assets/logo/43.png'),
    Image.asset('assets/logo/44.png'),
    Image.asset('assets/logo/45.png'),
    Image.asset('assets/logo/46.png'),
    Image.asset('assets/logo/47.png'),
    Image.asset('assets/logo/48.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          for (var image in images)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(width: 500, height: 350, child: image),
                ),
              ),
              elevation: 5.0,
              shadowColor: Color.fromRGBO(241, 54, 80, 1.0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
            ),
        ]);
  }
}
