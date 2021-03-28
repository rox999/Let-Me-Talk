import 'package:firebase_auth/firebase_auth.dart';
import 'package:let_me_talk/database/user_database.dart';
import 'package:let_me_talk/models/user.dart';

class AuthService {

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream get authChange => _firebaseAuth.authStateChanges();

  //register function
  Future registerWithEmailAndPassword(String email, String pass) async {
    try {
      UserCredential _userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: pass);
      User _user = _userCredential.user;
      print("User has been registered");
      return "SUCCESS_FULL";
    } catch (e) {
      print(e.toString());
      return 'REGISTRATION FAILED';
    }
  }

  //sign in function
  Future signInWithEmailAndPassword(String email, String pass) async {
    try {
      UserCredential _userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: pass);
      User _user = _userCredential.user;
      print("user sign in");
      return "SUCCESS_FULL";
    } catch (e) {
      print(e.toString());
      return 'REGISTRATION FAILED';
    }
  }
  
  //sign out
  Future<String> signOut() async {
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