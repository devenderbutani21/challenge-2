import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.pink,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Meetup',
          style: TextStyle(color: Colors.pink),
        ),
        actions: <Widget>[
          Container(
            width: 50,
            child: FlatButton(
              child: Icon(
                Icons.search,
                color: Colors.pink,
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            height: deviceSize.height,
            width: double.infinity,
            color: Colors.pink.shade300,
//              children: <Widget>[],
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
            ),
            child: Container(
              height: deviceSize.height * 3 / 4,
              width: double.infinity,
              color: Colors.pink.shade200,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 380,
                  ),
                  Text(
                    'Today 8:00 PM',
                    style: TextStyle(
                      color: Colors.pink.shade300,
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    'Practice French,English and Chinese',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.music_note,
                          size: 15.0,
                          color: Colors.pink.shade200,
                        ),
                        padding: EdgeInsets.all(5.0),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.music_note,
                          size: 15.0,
                          color: Colors.pink.shade200,
                        ),
                        padding: EdgeInsets.all(5.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
            ),
            child: Container(
              height: deviceSize.height * 1 / 2,
              width: double.infinity,
              color: Colors.pink.shade100,
//              children: <Widget>[],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
            ),
            child: Container(
              height: deviceSize.height * 1 / 4,
              width: double.infinity,
              color: Colors.white70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.music_note,
                      size: 35.0,
                      color: Colors.pink.shade200,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.poll,
                      size: 35.0,
                      color: Colors.pink.shade200,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.favorite_border,
                      size: 35.0,
                      color: Colors.pink.shade200,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
