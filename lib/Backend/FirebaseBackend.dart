import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ugi/Model/Users.dart';

var userReference = FirebaseFirestore.instance.collection("Users");

class FirebaseFunctions {
  Future<void> createUserRecord(Users users) async {
    await userReference.doc(users.phoneNumber).set(
      {
        "Name": users.name,
        "Phone Number": users.phoneNumber,
        "Date of Joining": users.joiningDate,
        "Is Active": users.isActive,
        "Has Paid": users.hasPaid,
      },
    );
  }

  Future<void> deleteUserRecord(Users users) async {
    await userReference.doc(users.phoneNumber).delete();
  }

  Future<void> upDateUser(Users users) async {
    await userReference.doc(users.phoneNumber).update({});
  }
}
