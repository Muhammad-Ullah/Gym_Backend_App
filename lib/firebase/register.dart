
import "package:flutter/material.dart";
import 'package:gymapp/firebase/auth.dart';


class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formkey=GlobalKey<FormState>();
  final AuthService _authService=AuthService();
  String email='';
  String password='';
  bool loading=false;
  String error="";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Sign Up to Brew Crew"),
          actions: <Widget> [
            FlatButton.icon(onPressed: (){
             // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()));
            }, icon: Icon(Icons.person), label: Text("Sign In"))
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50.0),
          child: Form(
            key: _formkey,
              child:Column(
                  children: <Widget>[
                    SizedBox(height: 10,),
                    TextFormField(
                      validator: (val)=>val.isEmpty? "Enter an email":null,
                      onChanged: (val)
                      {
                        setState(() {
                          email=val;
                        });
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      validator: (val)=>val.length<6? "Enter password 6 characters":null,
                      obscureText: true,
                      onChanged: (val)
                      {
                        setState(() {
                          password=val;
                        });
                      },
                    ),
                    SizedBox(height: 20,),
                    RaisedButton(
                        color: Colors.pink,
                        child: Text("Register"),
                        onPressed:() async {
                          if (_formkey.currentState.validate()) {
                            setState(() {
                              loading = true;
                            });
                            dynamic result = await _authService
                                .registerWithEmailAndPassword(email, password);
                           if(result.isEmailVerified){
                             print("verified");
                           }
                            if (result == null) {
                              error = "This is not a valid email";
                            }
                            else {
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                            }
                          }
                        }
                   ),
                    SizedBox(height: 20,),
                    Text(error,style: TextStyle(fontSize: 50,color: Colors.red),),
                  ]
              )
          ),
        )
    );
  }
}


