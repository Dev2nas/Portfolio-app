
import 'package:flutter/material.dart';

class card extends StatefulWidget {
  final Widget image;


  const card({Key key, this.image}) : super(key: key);

  @override
  State<card> createState() => _cardState();
}
class galery{
  String image;

  galery(this.image);
}
class _cardState extends State<card> {

  //   final List<ClassRecettes> ListDesRecttes=[
  //   ClassRecettes("Recette  ","Par WasiFood","images/d18.jpg","la sauce filet est facile",true,10),
  //   ClassRecettes("Recette 1","Par WasiFood","images/d18.jpg","la sauce filet est facile Recette 1",true,10),
  //   ClassRecettes("Recette 2","Par WasiFood","images/d11.jpg","la sauce filet est facile Recette 2",true,10),
  //   ClassRecettes("Recette 3","Par WasiFood","images/d13.jpg","la sauce filet est facile Recette 3",true,10),
  //   ClassRecettes("Recette 4","Par WasiFood","images/d9.jpg"," la sauce filet est facile Recette 4",true,10),
  //   ClassRecettes("Recette 5","Par WasiFood","images/d10.jpg","la sauce filet est facile Recette 5",true,10),
  //   ClassRecettes("Recette 6","Par WasiFood","images/d11.jpg","la sauce filet est facile Recette 6",true,10),
  //   ClassRecettes("Recette 7","Par WasiFood","images/d12.jpg","la sauce filet est facile Recette 7",true,10),
  // ];
  final List Galery=[
    galery(
        "assets/logo/1.png"
    ),
    galery(
        "assets/logo/2.png"
    ),
    galery(
        "assets/logo/3.png"
    )
  ];

  List imgList = [
    Image.asset('assets/logo/1.png'),
    Image.asset('assets/logo/2.png'),
    Image.asset('assets/logo/3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [




                  ],
                ),
              ),
              elevation: 5.0,
              shadowColor: Color.fromRGBO(241, 54, 80, 1.0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/logo/2.png",
                        width: 100,
                      ),
                    )
                  ],
                ),
              ),
              elevation: 5.0,
              shadowColor: Color.fromRGBO(241, 54, 80, 1.0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/logo/3.png",
                        width: 100,
                      ),
                    )
                  ],
                ),
              ),
              elevation: 5.0,
              shadowColor: Color.fromRGBO(241, 54, 80, 1.0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/logo/4.png",
                        width: 100,
                      ),
                    )
                  ],
                ),
              ),
              elevation: 5.0,
              shadowColor: Color.fromRGBO(241, 54, 80, 1.0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/logo/5.png",
                        width: 100,
                      ),
                    )
                  ],
                ),
              ),
              elevation: 5.0,
              shadowColor: Color.fromRGBO(241, 54, 80, 1.0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/logo/6.png",
                        width: 100,
                      ),
                    )
                  ],
                ),
              ),
              elevation: 5.0,
              shadowColor: Color.fromRGBO(241, 54, 80, 1.0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/logo/7.png",
                        width: 100,
                      ),
                    )
                  ],
                ),
              ),
              elevation: 5.0,
              shadowColor: Color.fromRGBO(241, 54, 80, 1.0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/logo/8.png",
                        width: 100,
                      ),
                    )
                  ],
                ),
              ),
              elevation: 5.0,
              shadowColor: Color.fromRGBO(241, 54, 80, 1.0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/logo/9.png",
                        width: 100,
                      ),
                    )
                  ],
                ),
              ),
              elevation: 5.0,
              shadowColor: Color.fromRGBO(241, 54, 80, 1.0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
            ),
          ),

          Container(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/logo/10.png",
                        width: 100,
                      ),
                    )
                  ],
                ),
              ),
              elevation: 5.0,
              shadowColor: Color.fromRGBO(241, 54, 80, 1.0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
            ),
          ),

        ]);
  }
}






child: Column(
children: [
for (var item in imgList)
Card(
child: Padding(
padding: EdgeInsets.all(0),
child: Column(
children: [
Expanded(
child: Image.asset(
"assets/logo/10.png",
width: 100,
),
)
],
),
),
elevation: 5.0,
shadowColor:
Color.fromRGBO(241, 54, 80, 1.0),
clipBehavior: Clip.antiAlias,
color: Colors.white,
),
],
),