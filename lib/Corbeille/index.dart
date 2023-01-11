import 'package:flutter/material.dart';
import '../drawer.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<MyApp> {
  int value = 0;
  int _id=0;
  String text = '';
  String _value='';

 List<BottomNavigationBarItem> _item;
 
  void initState(){
    super.initState();
  _item=new List();
  _item.add(BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.purple)));
  _item.add(BottomNavigationBarItem(icon: Icon(Icons.wallpaper,color: Colors.purple)));
  _item.add(BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.purple)));
  _item.add(BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.purple)));
  
}

  void add() {
    setState(() {
      value++;
    });
  }

  void remove() {
    setState(() {
      value--;
    });
  }

  void show(String a) {
    setState(() {
      text = a;
    });
  }

  void btn_sheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Test",
                  style: TextStyle(fontSize: 50),
                ),
                Padding(padding: EdgeInsets.all(20),),
                Text(
                  "$_value",
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          );
        });
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_bag_outlined),
              iconSize: 20,
              onPressed: add,
            ),
            IconButton(
              icon: Icon(Icons.shopping_bag_rounded),
              iconSize: 20,
              onPressed: remove,
            ),
          ],
        ),

         bottomNavigationBar: BottomNavigationBar(
          items: _item,
          currentIndex: _id,
          onTap: (int item) {
            setState(() {
              _id = item;
              _value='Clique sur ${_id.toString()}';
            });
          },
        ),
        drawer: drawer(),
       
        body: Center(
        ));
  }
}
