import 'package:firebase_auth/firebase_auth.dart';
import 'package:let_me_talk/database/user_database.dart';
import 'package:let_me_talk/models/user.dart';

class AuthService {

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //register function
  Future registerWithEmailAndPassword(String email, String pass) async {
    try {
      UserCredential _userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: pass);
      User _user = _userCredential.user;
      print("User has been registered");
      return _user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in function
  Future signInWithEmailAndPassword(String email, String pass) async {
    try {
      UserCredential _userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: pass);
      User _user = _userCredential.user;
      print("user sign in");
      return _user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  
  //sign out
  Future<String> signOut(String email,String password) async {
      try {
        _firebaseAuth.signOut();
        return "SIGN_OUT";
      }catch(e){
        print(e.toString());
        return "FAILED";
      }
  }


  Future<UserDetail> get userDetail async{
   return await UserDatabase().getUserDetail();
  }



}