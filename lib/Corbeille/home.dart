import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:ui';
import 'drawer.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  List<AnimatedTextExample> _examples;
  int _index = 0;
  @override
  void initState() {
    super.initState();
    _examples = animatedText(onTap: () {
      print('Tap Event');
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final animatedTextExample = _examples[_index];

    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(backgroundColor:Color.fromRGBO(241,54,80,1.0),
      title: Text('DEVNAS PORTFOLIO APP'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Container(
              padding: const EdgeInsets.only(left: 80,top: 30,right: 80,bottom: 80),
              child: CircleAvatar(backgroundImage: AssetImage('assets/profil.png'), radius: 90,backgroundColor: Color.fromRGBO(241,54,80,1.0),
              ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: animatedTextExample.child,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Center(
              child: Text('Skill'),
                  ),
                ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text('{Web/Mobile developper',style: TextStyle( fontSize: 20.0,
                          fontFamily: 'Raleway',),),
                      Text('Graphic Designer,',style: TextStyle(color:Color.fromRGBO(241,54,80,1.0),fontSize: 20.0,
                        fontFamily: 'Raleway',),),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Text('{Web/Mobile developper'),
                              Text('Graphic Designer,'),
                            ],
                          ),
                        ),
                      ),

                      Text('Community Manager, '),
                      Text('Social Media, '),
                      Text('Autodidacte, '),
                      Text('Open source system integrator, '),
                      Text('UX Designer, '),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text('{Web/Mobile developper'),
                      Text('Graphic Designer,'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }
}

class AnimatedTextExample {
  final String label;
  final Color color;
  final Widget child;

  const AnimatedTextExample({
    this.label,
    this.color,
    this.child,
  });
}

List<AnimatedTextExample> animatedText({VoidCallback onTap}) =>
    <AnimatedTextExample>[
      AnimatedTextExample(
        label: 'PORTFOLIO APP',
        color: Colors.black,
        child: SizedBox(
          width: 250.0,
          child: DefaultTextStyle(
            style: const TextStyle(
                fontSize: 25.0,
                fontFamily: 'Raleway-Black.ttf',
                fontWeight: FontWeight.bold
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Hello world', cursor: '...',curve: Curves.linear,speed: const Duration(milliseconds: 150),textStyle: TextStyle(color: Color.fromRGBO(241,54,80,1.0))),
                TypewriterAnimatedText('welcome to DEVNAS APP PORTFOLIO', cursor: '...',curve: Curves.linear,speed: const Duration(milliseconds: 150),textStyle: TextStyle(color: Color.fromRGBO(241,54,80,1.0))),
                TypewriterAnimatedText('my is OUMAROU SEINI Abdoulnasser', cursor: '...',curve: Curves.linear,speed: const Duration(milliseconds: 150)),
              ],
              onTap: onTap,
              isRepeatingAnimation: true,
              repeatForever: true,
            ),
          ),
        ),
      ),
    ];
