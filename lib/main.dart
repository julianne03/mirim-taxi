import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MIRIM TAXI',
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
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
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("복잡한 UI"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert,color: Colors.black),
            onPressed: (){},
          )
        ],
      ),
      body: Center(
        child: Text(
          '$_index 페이지',
          style: TextStyle( fontSize: 40),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('홈'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('이용서비스'),
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            title: Text('내 정보'),
            icon: Icon(Icons.account_circle),
          ),
        ]
      ),
    );
  }
}

