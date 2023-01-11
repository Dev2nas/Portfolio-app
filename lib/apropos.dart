import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'drawer.dart';

class apropos extends StatefulWidget {
  @override
  _aproposState createState() => _aproposState();
}

class _aproposState extends State<apropos> {
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
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 00),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          CircleAvatar(
                              backgroundImage: AssetImage('assets/profil.png'),
                              radius: 80,
                              backgroundColor:
                                  Color.fromRGBO(241, 54, 80, 1.0)),
                          animatedTextExample.child,
                          Image.asset(
                            'assets/social.png',
                            width: 150,
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/devnas.png',
                            width: 150,
                            height: 40,
                          ),
                          Text(
                            'OUMAROU SEINI',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Abdoulnasser',
                            style: TextStyle(
                                color: Color.fromRGBO(241, 54, 80, 1.0),
                                fontSize: 18.0,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            'assets/niger.jpg',
                            height: 80,
                            width: 100,
                          ),
                          Text(
                            'Nigérien',
                            style: TextStyle(
                                fontSize: 16.0, fontFamily: 'Raleway'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Célibatiare',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('A propos de moi ',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Hi je suis freelance très intéressé par le secteur informatique et développement des applications de gestion, je suis particulièrement sensible à la gestion des bases de données,la conceptionet le développement web, la création des identités visuelles pour les entreprises ainsi que l’administration des systèmes d’information.',
                      textAlign: TextAlign.left,
                      maxLines: 18,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Raleway',
                      ),
                    ),
                  )),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/langue.png',width: 300,)
                ],
              )
            ],
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
          width: 100.0,
          child: DefaultTextStyle(
            style: const TextStyle(
                fontSize: 20.0,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Hello world',
                    cursor: '..</>',
                    curve: Curves.linear,
                    speed: const Duration(milliseconds: 200),
                    textStyle:
                        TextStyle(color: Color.fromRGBO(241, 54, 80, 1.0))),
              ],
              onTap: onTap,
              isRepeatingAnimation: true,
              repeatForever: true,
            ),
          ),
        ),
      ),
    ];
