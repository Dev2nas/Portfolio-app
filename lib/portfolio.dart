import 'package:flutter/material.dart';
import 'package:hello_world/Portfolio/TabBar/tabBar_1.dart';
import 'package:hello_world/Portfolio/TabBar/tabBar_2.dart';
import 'package:hello_world/Portfolio/TabBar/tabBar_3.dart';
import 'package:hello_world/Portfolio/TabBar/tabBar_4.dart';
import 'drawer.dart';

class portfolio extends StatefulWidget {
  @override
  _portfolioState createState() => _portfolioState();
}

class _portfolioState extends State<portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
              'Portfolio',
              style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold),
            )),
      ),
      body: DefaultTabController(
          length: 4, // length of tabs
          initialIndex: 0,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints.expand(height: 50),
                  color: Color.fromRGBO(241, 54, 80, 1.0),
                  child: TabBar(
                    labelColor: Color.fromRGBO(241, 54, 80, 1.0),
                    indicatorColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    indicator: BoxDecoration(color: Colors.black),
                    tabs: [
                      Tab(text: 'Branding'),
                      Tab(text: 'Logo'),
                      Tab(text: 'Typographie'),
                      Tab(text: 'Flyer'),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                          height: 537,
                          decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.black, width: 1)),),
                          child: TabBarView(children: <Widget>[
                            Container(
                              color: Colors.red,
                              child: tabBar_1(),
                            ),
                            //logo
                            Container(
                              color: Colors.red,
                              child: tabBar_2(),
                            ),
                            Container(
                              color: Colors.red,
                              child: tabBar_3(),
                            ),
                            Container(
                              color: Colors.red,
                              child: tabBar_4(),
                            ),
                          ])),
                    ],
                  ),
                )
              ])),
      backgroundColor: Colors.white,
    );
  }
}
