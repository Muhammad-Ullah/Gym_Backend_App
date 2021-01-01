import 'package:flutter/material.dart';
import 'package:gymapp/models/constants.dart';
import 'package:gymapp/screens/create_room.dart';
import 'package:gymapp/screens/room_info.dart';

class AlreadyCreatedRooms extends StatefulWidget {
  @override
  _AlreadyCreatedRoomsState createState() => _AlreadyCreatedRoomsState();
}

class _AlreadyCreatedRoomsState extends State<AlreadyCreatedRooms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(mainColor),
        appBar: AppBar(title: Text('Already created rooms',),
          elevation: 0,
          backgroundColor: Color(mainColor)),
      body: Container(

        child: new Container(

          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: new ListView(
            children: <Widget>[
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(lightPrimaryColor),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                      child: Text(
                    "Room Name: 7/10 participant",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
                onTap: ()
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RoomInfo()));
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(lightPrimaryColor),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Center(
                    child: Text(
                  "Cardio Master: 3/10 participant",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(lightPrimaryColor),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Center(
                    child: Text(
                  "Cardio Master: 1/10 participant",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton.extended(
        backgroundColor: Color(primareyColor),
        onPressed: ()
        {
          Navigator.push((context), MaterialPageRoute(builder: (context)=>CreateRoom()));
        },
        tooltip: 'Increment',
        icon: new Icon(Icons.add),
        label: const Text("create new room"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Color(mainColor),
        shape: CircularNotchedRectangle(
        ),
        child: Material(
          child: SizedBox(
            width: double.infinity,
            height: 50.0,
          ),
          color: Color(mainColor),
        ),
      ),
    );
  }
}
