import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ugi/Model/Users.dart';

var userReference = FirebaseFirestore.instance.collection("Users");

class FirebaseFunctions {
  Future<void> createUserRecord(Users users) async {
    await userReference.doc(users.phoneNumber).set({
      "Name": users.name,
      "Phone Number": users.phoneNumber,
      "Date of Joining": users.joiningDate,
    });
  }
}
