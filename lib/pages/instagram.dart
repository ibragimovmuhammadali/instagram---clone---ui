



import 'dart:async';

import 'package:flutter/cupertino.dart.';
import 'package:flutter/material.dart';
import 'package:ngdemo_ui1/pages/sign_in_page.dart';


class Instagram extends StatefulWidget {
  static const String id = "instagram";
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {

  _callSignIn(){
    Navigator.of(context).pushReplacementNamed(SignInPage.id);
  }


  _initTimer() {
    Timer(Duration(seconds: 2), (){
      _callSignIn();
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       width: MediaQuery.of(context).size.width,
       decoration:  BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
             colors: [
               Color.fromRGBO(193,35,132,1),
               Color.fromRGBO(131,58,180,1),
           ],),),
       child:  Stack(
         children: [
           Center(
             child: Text ("Instagram", style: TextStyle(color: Colors.white,fontSize: 35, fontFamily: "Billabong"),
             ),
           ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text("All rights reserved",style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ],
            ),
          ),
         ],
       ),
     ),
    );
  }
}
