import 'package:flutter/material.dart';
import './Homepage.dart';

void main()=>runApp(Home());

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: "travel",
      theme: ThemeData(  
        primaryColor: Colors.black,
        accentColor: Colors.amber,
      ),
      home: Homepage(),
    );
  }
}