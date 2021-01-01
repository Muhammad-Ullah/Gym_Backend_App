


import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gymapp/authentication/login.dart';
import 'package:gymapp/models/constants.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Login())));


  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(

        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: new Image.asset(
                            'assets/logo2.jpeg',
                            scale: 5,
                          ),
                          // Icon(
                          //   Icons.shopping_cart,

                          //   color: Colors.greenAccent,
                          //   size: 50.0,
                          // ),
                        ),

                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(

                        backgroundColor: Colors.black,
                        valueColor: new AlwaysStoppedAnimation<Color>(Color(mainColor)),

                        // valueColor:,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25.0),
                      ),
                      Text(
                        "Welcome to PAREA",
                        // Flutkart.store,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Color(mainColor)),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

