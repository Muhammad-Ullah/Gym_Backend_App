


import 'package:flutter/material.dart';
import 'package:gymapp/global.dart';
import 'package:gymapp/models/constants.dart';
import 'package:gymapp/screens/video_call.dart';
import 'package:gymapp/ui/widgets/widgets.dart';

class ChatScreen extends StatefulWidget {

  String _getFriend;
  ChatScreen(String gett)
  {
    _getFriend=gett;
  }
  @override
  _ChatScreenState createState() => _ChatScreenState(_getFriend);
}

class _ChatScreenState extends State<ChatScreen> {
  bool _showBottom = false;

  String _getFriend;
  _ChatScreenState(String getFriendd)
  {
    _getFriend=getFriendd;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(mainColor),
      appBar: AppBar(
        backgroundColor: Color(mainColor),
        iconTheme: IconThemeData(color: Colors.black54),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(Icons.person),
            ),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$_getFriend',
                  style: TextStyle(fontSize: 20,color: Colors.black),
                  overflow: TextOverflow.clip,
                ),
                Text(
                  "Online",
                  style: Theme.of(context).textTheme.subtitle.apply(
                    color: myGreen,
                  ),
                )
              ],
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.phone,color: Colors.black,),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.videocam,color: Colors.black,),
            onPressed: () {
              Navigator.push((context), MaterialPageRoute(builder: (context)=>VideoCall()));
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert,color: Colors.black,),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(15),
                    itemCount: messages.length,
                    itemBuilder: (ctx, i) {
                      if (messages[i]['status'] == MessageType.received) {
                        return ReceivedMessagesWidget(i: i);
                      } else {
                        return SentMessageWidget(i: i);
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  height: 61,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35.0),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  blurRadius: 5,
                                  color: Colors.grey)
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.face), onPressed: () {}),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Type Something...",
                                      border: InputBorder.none),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.photo_camera),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.attach_file),
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                        child: InkWell(
                          child: Icon(
                            Icons.keyboard_voice,
                            color: Colors.white,
                          ),
                          onLongPress: () {
                            setState(() {
                              _showBottom = true;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned.fill(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _showBottom = false;
                });
              },
            ),
          ),
          _showBottom
              ? Positioned(
            bottom: 90,
            left: 25,
            right: 25,
            child: Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 15.0,
                      color: Colors.grey)
                ],
              ),
              child: GridView.count(
                mainAxisSpacing: 21.0,
                crossAxisSpacing: 21.0,
                shrinkWrap: true,
                crossAxisCount: 3,
                children: List.generate(
                  icons.length,
                      (i) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[200],
                        border: Border.all(color: myGreen, width: 2),
                      ),
                      child: IconButton(
                        icon: Icon(
                          icons[i],
                          color: myGreen,
                        ),
                        onPressed: () {},
                      ),
                    );
                  },
                ),
              ),
            ),
          )
              : Container(),
        ],
      ),
    );
  }
}

List<IconData> icons = [
  Icons.image,
  Icons.camera,
  Icons.file_upload,
  Icons.folder,
  Icons.gif
];
