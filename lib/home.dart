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
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final animatedTextExample = _examples[_index];

    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(241, 54, 80, 1.0),
        title: Text('DEVNAS PORTFOLIO APP'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                    ),
                    CircleAvatar(
                        backgroundImage: AssetImage('assets/profil.png'),
                        radius: 90,
                        backgroundColor: Color.fromRGBO(241, 54, 80, 1.0)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    animatedTextExample.child,
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'SKILLS',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(241, 54, 80, 1.0)),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                    ),
                    Text('{Web/Mobile developper',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold)),
                    Text('Graphic Designer,',
                        style: TextStyle(
                            color: Color.fromRGBO(241, 54, 80, 1.0),
                            fontSize: 15.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold)),
                    Text('Community Manager, ',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold)),
                    Text('Social Media, ',
                        style: TextStyle(
                            color: Color.fromRGBO(241, 54, 80, 1.0),
                            fontSize: 15.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold)),
                    Text('Autodidacte, ',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold)),
                    Text('Open source system integrator, ',
                        style: TextStyle(
                            color: Color.fromRGBO(241, 54, 80, 1.0),
                            fontSize: 15.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold)),
                    Text('UX Designer }, ',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                //Mes 2 boutons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 70),
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          label: Text('Contacter moi',
                            style: TextStyle(
                                color: Color.fromRGBO(241, 54, 80, 1.0), fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),

                          ),
                          icon: Icon(Icons.phone,
                              color: Color.fromRGBO(241, 54, 80, 1.0)
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              fixedSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)))),
                    ),
                    //Curriculum vitae
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 70),
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          label: Text('Curriculum vitae',style: TextStyle( fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold),),
                          icon: Icon(Icons.download),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(241, 54, 80, 1.0),
                              fixedSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
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
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Hello world',
                    cursor: '..</>',
                    curve: Curves.linear,
                    speed: const Duration(milliseconds: 150),
                    textStyle:
                    TextStyle(color: Color.fromRGBO(241, 54, 80, 1.0))),
                TypewriterAnimatedText('Welcome to DEVNAS APP PORTFOLIO',
                    cursor: '..</>',
                    curve: Curves.linear,
                    speed: const Duration(milliseconds: 150),
                    textStyle:
                    TextStyle(color: Color.fromRGBO(241, 54, 80, 1.0))),
                TypewriterAnimatedText('My name is OUMAROU SEINI Abdoulnasser',
                    cursor: '..</>',
                    curve: Curves.linear,
                    speed: const Duration(seconds: 30)),
              ],
              onTap: onTap,
              isRepeatingAnimation: true,
              repeatForever: true,
            ),
          ),
        ),
      ),
    ];
