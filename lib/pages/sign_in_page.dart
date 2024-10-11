import 'package:flutter/cupertino.dart.';
import 'package:flutter/material.dart';
import 'package:ngdemo_ui1/pages/home_page.dart';

class SignInPage extends StatefulWidget {
  static const String id = "sign_in_page";
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  _callHomePage(){
    Navigator.of(context).pushReplacementNamed(HomePage.id);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(193,35,132,1),
              Color.fromRGBO(131,58,180,1),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Instagram",
                       style:
                       TextStyle
                         (color: Colors.white,fontSize: 50, fontFamily: 'Billabong'),
                     ),
                     Container(
                       margin: EdgeInsets.only(top: 10),
                       padding: EdgeInsets.only(left: 10, right: 10),
                       width: 320,
                       height: 50,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(7),
                         color: Colors.white.withOpacity(0.2),
                       ),
                       child: TextField(
                         decoration: InputDecoration(
                           hintText: "Email",
                           border: InputBorder.none,
                           hintStyle: TextStyle(fontSize: 17, color: Colors.white54),
                         ) ,
                       ),
                     ),
                     SizedBox(height: 10,),
                     Container(
                       padding: EdgeInsets.only(left: 10, right: 10),
                       width: 320,
                       height: 50,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(7),
                         color: Colors.white.withOpacity(0.2),
                       ),
                         child: TextField(
                           obscureText: true,
                           decoration: InputDecoration(
                             hintText: "Password",
                             border: InputBorder.none,
                             hintStyle: TextStyle(fontSize: 17, color: Colors.white54),
                           ) ,
                         )
                     ),

                     GestureDetector(
                       onTap: (){
                       _callHomePage();
                       },
                       child: Container(
                         margin: EdgeInsets.only(top: 10),
                         padding: EdgeInsets.symmetric(horizontal: 10),
                         width: 320,
                         height: 50,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(7),
                           color: Colors.white.withOpacity(0.2)
                         ),
                         child: Center(
                           child: Text("Sing In", style: TextStyle(color: Colors.white,fontSize: 17),),
                         ),
                       ),
                     ),

                   ],
                ),
              ),

            ),


         Container(
           height: 48,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Do`no have an account", style: TextStyle(color: Colors.white),),
               SizedBox(width: 10,),
               Text("Sing Up", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
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
