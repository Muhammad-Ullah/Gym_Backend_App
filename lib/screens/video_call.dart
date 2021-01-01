


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gymapp/models/constants.dart';
class VideoCall extends StatefulWidget {
  @override
  _VideoCallState createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(mainColor),
      appBar: AppBar(title: Text('Ongoing video call'),
        elevation: 0,
        backgroundColor: Color(mainColor),),

      body: Column(
            children: [
              Flexible(
                child: Container(
                  child: Container(
                    color: Colors.grey,
                    height: MediaQuery.of(context).size.height/2.5,
                    child: Center(child: Text("partner screen")),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.grey,
                  height: MediaQuery.of(context).size.height/2.5,
                  child: Center(child: Text("Your screen")),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(primareyColor)
                      ),
                      child: IconButton(
                        icon: Icon(Icons.done,color: Colors.white,),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(primareyColor)
                      ),
                      child: IconButton(
                        icon: Icon(Icons.report_problem,color: Colors.white,),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(primareyColor)
                      ),
                      child: IconButton(
                        icon: Icon(Icons.person_add,color:Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
    );
  }
}
