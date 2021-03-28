import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:let_me_talk/models/user.dart';

class UserDatabase {
  String uid;
  UserDatabase({this.uid});

  CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection("USER_DETAILS");

  Future updateUserDetail(UserDetail userDetail) async {
    await _collectionReference.doc(uid).set({
      "name": userDetail.name,
      "status": userDetail.status,
      "phoneNumber": userDetail.phoneNumber,
      "dp": userDetail.photoUrl,
      "email": userDetail.email,
    });
    print("User details updated!");
  }

  Future getUserDetail() async {
    DocumentSnapshot _snapshot = await _collectionReference.doc(uid).get();
    return UserDetail(
      uid: uid,
      name: _snapshot.data()["name"],
      status: _snapshot.data()["status"],
      phoneNumber: _snapshot.data()["phoneNumber"],
      email: _snapshot.data()["email"],
      photoUrl: _snapshot.data()["dp"],
    );
  }



}
