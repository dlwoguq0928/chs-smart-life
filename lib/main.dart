import 'package:flutter/material.dart';

void main() {
  runApp(AppMain());
}

class AppMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TitleApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageMain(),
    );
  }
}

class PageMain extends StatefulWidget {
  @override
  PageMainState createState() => PageMainState();
}

class PageMainState extends State<PageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(0),child: AppBar()),
      body: Column(
        children: <Widget>[
          ListView(
            children: <Widget>[
              
            ],
          )
        ],
      )
    );
  }
}