import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String arg =ModalRoute.of(context).settings.arguments.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text("奶爸，你好！"),
      ),
      body: Column(
        children: <Widget>[
          Text('这是首页'),
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('返回$arg'),
          )
        ],
      ),
    );
  }
}
