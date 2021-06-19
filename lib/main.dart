import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'LevelUp1 - Bandeiras'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  '1 - Bandeira do Japão',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.purple.shade200),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.only(right: 50, left: 50),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                  ),
                  Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle)),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  '2 - Bandeira SailorMoon',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.purple.shade200),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.only(right: 50, left: 50),
                    decoration: BoxDecoration(
                        color: Colors.pink.shade100,
                        border: Border.all(color: Colors.black)),
                  ),
                  Positioned(
                    top: -13,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          Icons.star_outline_outlined,
                          color: Colors.yellowAccent,
                          size: 235,
                        ),
                        Positioned(
                          top: 97,
                          child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.yellowAccent,
                                  shape: BoxShape.circle)),
                        ),
                        Positioned(
                          top: 97,
                          child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.pink.shade100,
                                  shape: BoxShape.circle)),
                        ),
                        Positioned(
                          top: 75,
                          child: Container(
                              width: 19,
                              height: 19,
                              decoration: BoxDecoration(
                                  color: Colors.red, shape: BoxShape.circle)),
                        ),
                        Positioned(
                          bottom: 45,
                          child: Container(
                              width: 19,
                              height: 19,
                              decoration: BoxDecoration(
                                  color: Colors.blue, shape: BoxShape.circle)),
                        ),
                        Positioned(
                          bottom: 85,
                          left: 53,
                          child: Container(
                              width: 19,
                              height: 19,
                              decoration: BoxDecoration(
                                  color: Colors.green, shape: BoxShape.circle)),
                        ),
                        Positioned(
                          bottom: 85,
                          right: 53,
                          child: Container(
                              width: 19,
                              height: 19,
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade800,
                                  shape: BoxShape.circle)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
