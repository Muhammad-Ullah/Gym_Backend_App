import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gymapp/authentication/signup.dart';
import 'package:gymapp/models/constants.dart';
import 'package:gymapp/screens/already_created_room.dart';
import 'package:gymapp/screens/create_room.dart';

class RoomSystem extends StatefulWidget {
  @override
  _RoomSystemState createState() => _RoomSystemState();
}

class _RoomSystemState extends State<RoomSystem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Room system"),
          backgroundColor: Color(mainColor),
        ),
        body:SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

                Container(
                  child: Text("Which exercise you want to join?",style: TextStyle(fontSize: 20,color: Colors.black),),
                ),


                Container(
                  child: GridView.count(
                    crossAxisCount: 2,
                      shrinkWrap: true,
                      primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(mainColor),
                            borderRadius: BorderRadius.all(Radius.circular(15)),

                          ),
                          padding: EdgeInsets.all(20),

                          child: Center(
                            child: Text(
                              "Cardio",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: ()
                        {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AlreadyCreatedRooms()));
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(mainColor),
                            borderRadius: BorderRadius.all(Radius.circular(15)),

                          ),
                          padding: EdgeInsets.all(20),

                          child: Center(
                            child: Text(
                              "Weight Lose",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: ()
                        {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => AlreadyCreatedRooms()));
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(mainColor),
                            borderRadius: BorderRadius.all(Radius.circular(15)),

                          ),
                          padding: EdgeInsets.all(20),

                          child: Center(
                            child: Text(
                              "Weight Gain",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: ()
                        {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => AlreadyCreatedRooms()));
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(mainColor),
                            borderRadius: BorderRadius.all(Radius.circular(15)),

                          ),
                          padding: EdgeInsets.all(20),

                          child: Center(
                            child: Text(
                              "Muscles Mass",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: ()
                        {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => AlreadyCreatedRooms()));
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(mainColor),
                            borderRadius: BorderRadius.all(Radius.circular(15)),

                          ),
                          padding: EdgeInsets.all(20),

                          child: Center(
                            child: Text(
                              "Shoulder Press",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: ()
                        {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => AlreadyCreatedRooms()));
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(mainColor),
                            borderRadius: BorderRadius.all(Radius.circular(15)),

                          ),
                          padding: EdgeInsets.all(20),

                          child: Center(
                            child: Text(
                              "Push Ups",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: ()
                        {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => AlreadyCreatedRooms()));
                        },
                      ),
                    ],

                  ),
                )
              ],
            ),
          ),
        )


    );
  }
}
