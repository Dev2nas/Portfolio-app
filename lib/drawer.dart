import 'package:flutter/material.dart';
import 'package:hello_world/apropos.dart';
import 'package:hello_world/contacts.dart';
import 'package:hello_world/formations.dart';
import 'package:hello_world/portfolio.dart';

import 'home.dart';

class drawer extends StatefulWidget {
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
          //  decoration: BoxDecoration(color: Color.fromRGBO(241, 54, 80, 1.0)),
           decoration: BoxDecoration(color: Colors.black),
            child: UserAccountsDrawerHeader(
              decoration:BoxDecoration(color: Colors.black),
              arrowColor:Colors.white ,
              otherAccountsPictures: <Widget>[
              CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/profil.png'),
              )],
              accountName: Text('OUMAROU SEINI Abdoulnasser'),
              accountEmail: Text('devnac.inc@gmail.com'),
              currentAccountPicture:  CircleAvatar(child: SizedBox(height: 20,),
                backgroundColor:Colors.white,
                backgroundImage: AssetImage('assets/profil.png'),
              ),
            ),

          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => home())); //Quiz
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text(
              'Formation',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => formations())); //Quiz
            },
          ),
          ListTile(
            leading: Icon(Icons.code),
            title: Text(
              'Compétence',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => home())); //Quiz
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Portfolio',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => portfolio())); //Quiz
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(
              'Contacts',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => contacts())); //Quiz
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text(
              'A propos',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => apropos())); //Quiz
            },
          ),
          Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 200),),
                  Image.asset('assets/icon.png',height: 200,width: 200,)

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
