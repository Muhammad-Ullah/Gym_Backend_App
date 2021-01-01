import 'package:firebase_auth/firebase_auth.dart';
import 'package:gymapp/firebase/DatabaseManager.dart';
import 'package:gymapp/firebase/user.dart';

class AuthService{
  final FirebaseAuth _auth=FirebaseAuth.instance;
  Useer _userFromFirebaseUser(User user){
    return user != null ? Useer(uid: user.uid) : null;
  }
  Stream<Useer> get user{
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }
  // Future SignInAnon() async{
  //   try{
  //     UserCredential result=await _auth.signInAnonymously();
  //     User user = result.user;
  //     return _fromFirebaseUser(user);
  //   }catch(e)
  //   {
  //     print("Error");
  //     return null;
  //   }
  // }
  Future SignInWithEmailAndPassword(String email,String password)async
  {

    UserCredential result=await _auth.signInWithEmailAndPassword(email: email, password: password);
    User user = result.user;
    return _userFromFirebaseUser(user);

  }
  Future registerWithEmailAndPassword(String email,String password)async
  {

      UserCredential result=await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      await DatabaseManager().createUserData(email, 'Male', 100, user.uid);
      return _userFromFirebaseUser(user);
  }
  Future signOut() async
  {
    try{
    return await _auth.signOut();
    }catch(e)
    {
        print(e.toString());
        return null;
    }
  }
}

