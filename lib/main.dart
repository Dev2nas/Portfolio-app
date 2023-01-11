import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:cached_network_image/cached_network_image.dart';
//import 'package:flutter_cache_manager/flutter_cache_manager.dart';
//import 'package:lottie/lottie.dart';
import 'dart:ui';
import 'dart:async';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  /// This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PORTFOLIO APP',
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<AnimatedTextExample> _examples;
  int _index = 0;
  int _tapCount = 0;

  @override
  void initState() {
    super.initState();
    _examples = animatedText(onTap: () {
      print('Tap Event');
      setState(() {
        _tapCount++;
      });
    });
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 5);
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
  }

  @override
  Widget build(BuildContext context) {
    final animatedTextExample = _examples[_index];

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            animatedTextExample.label,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/logo.png')
              //child: Lottie.network('https://assets5.lottiefiles.com/packages/lf20_tfb3estd.json')
          ),
          /*CachedNetworkImage(
            imageUrl: "https://www.fluttercampus.com/img/logo_small.webp",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
            cacheManager: CacheManager(
                Config(
                  "fluttercampus",
                  stalePeriod: const Duration(days: 7),
                  //one week cache period
                )
            ),
          ),*/
          Center(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: animatedTextExample.child,
            ),
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
                fontWeight: FontWeight.bold),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('CODING IS POWER',
                    cursor: '...',
                    curve: Curves.linear,
                    speed: const Duration(milliseconds: 150),
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
