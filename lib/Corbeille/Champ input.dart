import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: "Nom",
                  hintText: "Entrer",
                  icon: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Prénom",
                  hintText: "Entrer",
                  icon: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(decoration: InputDecoration(
                labelText: "Mot dd passe",
                hintText: "Entrer",
                icon: Icon(Icons.password,color: Colors.blue,size: 25,),
              ),
                keyboardType: TextInputType.text,
              obscureText: true,)
            ],
          ),
        ));
  }
}
