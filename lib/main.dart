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
      body: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
            ),
            child: Container(
              height: 150,
              width: double.infinity,
              color: Colors.pink.shade100,
//              children: <Widget>[],
            ),
          ),
        ],
      ),
    );
  }
}
