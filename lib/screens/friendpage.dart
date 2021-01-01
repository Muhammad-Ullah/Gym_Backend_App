
import 'package:flutter/material.dart';
import 'package:gymapp/models/constants.dart';
import 'package:gymapp/screens/chat_screen.dart';
class FriendsPage extends StatefulWidget {
  //FriendsPage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  _FriendsPageState createState() => new _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  TextEditingController editingController = TextEditingController();

  List<String> frinds=["jone","smith","breez","sam","Messi","ahmad","crew"];

  //final duplicateItems = List<String>.generate(3, (i) => "Friend # $i");
  var items = List<String>();

  @override
  void initState() {
    items.addAll(frinds);
    super.initState();
  }
  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(frinds);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(frinds);
      });
    }
  }


    @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(mainColor),
      appBar: new AppBar(
        title: new Text("Friends Page"),
        backgroundColor: Color(mainColor),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search,color: Color(primareyColor),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    subtitle: Text("+92 3351996734"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.black,

                      child: Icon(Icons.person_outline),),
                    trailing: Icon(Icons.person_add,color: Colors.black,),
                    title: Text('${items[index]}',style:TextStyle(color: Colors.black,fontSize: 18)),
                    onTap: ()
                      {
                        Navigator.push((context), MaterialPageRoute(builder: (context)=>ChatScreen(frinds[index])));
                      }
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}