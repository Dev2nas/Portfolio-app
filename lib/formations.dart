import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'drawer.dart';
import 'package:photo_view/photo_view.dart';

class formations extends StatefulWidget {
  @override
  _formationsState createState() => _formationsState();
}

class _formationsState extends State<formations> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        
        title: Center(
            child: Text(
              'Formations',
              style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold),
            )),

      ),
      body:  PhotoView(
          imageProvider: AssetImage("assets/formations.png",)),
      backgroundColor: Colors.black,
    );
  }
}
