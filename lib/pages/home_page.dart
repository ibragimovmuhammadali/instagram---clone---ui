import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent[200],
        title: Text("Instagram", style: TextStyle(fontSize: 35, color: Colors.white, fontFamily: 'Billabong'),
        ),
      ),
    );
  }
}
