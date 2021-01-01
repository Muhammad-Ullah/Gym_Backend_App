


import 'package:flutter/material.dart';
import 'package:gymapp/models/constants.dart';

class RoomInfo extends StatefulWidget {
  @override
  _RoomInfoState createState() => _RoomInfoState();
}

class _RoomInfoState extends State<RoomInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(mainColor),
      appBar: AppBar(
        title: Text("Room Name"),
        backgroundColor: Color(mainColor),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: ListView(
          children: [
            Container(


              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/2,
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Color(lightPrimaryColor),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Row(
                    children: [
                    Text("Name 1",style: TextStyle(fontSize: 20),),
                    IconButton(
                      icon: Icon(Icons.access_time,size: 40,color: Colors.red,),
                      iconSize: 50,
                      color: Colors.green,

                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.done,size: 40,color: Colors.red,),
                      iconSize: 50,
                      color: Colors.green,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.close,size: 40,color: Colors.red,),
                      iconSize: 50,
                      color: Colors.green,

                      onPressed: () {},
                    ),
                ],
              ),
                        ),


            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Color(lightPrimaryColor),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Row(
                children: [
                    Text("Name 2",style: TextStyle(fontSize: 20),),
                    IconButton(
                      icon: Icon(Icons.close,size: 40,color: Colors.red,),
                      iconSize: 50,
                      color: Colors.green,

                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.done,size: 40,color: Colors.red,),
                      iconSize: 50,
                      color: Colors.green,

                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.close,size: 40,color: Colors.red,),
                      iconSize: 50,
                      color: Colors.green,

                      onPressed: () {},
                    ),
                ],
              ),
            ),
            Container(

              decoration: BoxDecoration(
                color: Color(lightPrimaryColor),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                    Text("Name 3",style: TextStyle(fontSize: 20),),
                    IconButton(
                      icon: Icon(Icons.close,size: 40,color: Colors.red,),
                      iconSize: 50,
                      color: Colors.green,

                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.done,size: 40,color: Colors.red,),
                      iconSize: 50,
                      color: Colors.green,

                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.close,size: 40,color: Colors.red,),
                      iconSize: 50,
                      color: Colors.green,

                      onPressed: () {},
                    ),
                ],
              ),
            ),

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: RaisedButton(
                      child: Text(
                        "Start Room",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Color(primareyColor),
                      onPressed: ()  {

                        // Navigator.push((context), MaterialPageRoute(builder: (context)=>RoomSystem()));

                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: RaisedButton(
                      child: Text(
                        "Leave Room",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Color(primareyColor),
                      onPressed: ()  {

                        // Navigator.push((context), MaterialPageRoute(builder: (context)=>RoomSystem()));

                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),

      )
        ],
        ),
      ),
    );
  }
}
