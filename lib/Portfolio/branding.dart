import 'package:flutter/material.dart';

class branding extends StatefulWidget {
  @override
  State<branding> createState() => _brandingState();
}

class _brandingState extends State<branding> {
  List images = [
    Image.asset('assets/branding/18.jpg'),
    Image.asset('assets/branding/19.jpg'),
    Image.asset('assets/branding/20.jpg'),
    Image.asset('assets/branding/21.jpg'),
    Image.asset('assets/branding/22.jpg'),
    Image.asset('assets/branding/24.jpg'),
    Image.asset('assets/branding/25.jpg'),
    Image.asset('assets/branding/26.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: [
          for (var image in images)
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(child: image),
        ),)
        ],
      ),
    );
  }
}