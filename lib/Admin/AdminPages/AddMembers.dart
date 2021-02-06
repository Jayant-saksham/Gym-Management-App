import 'package:fluttertoast/fluttertoast.dart';
import 'package:ugi/Backend/FirebaseBackend.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ugi/Model/Users.dart';
import 'package:ugi/Theme/color.dart';

class AddMember extends StatefulWidget {
  @override
  _AddMemberState createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {
  Users user;
  String name;
  String phoneNumber;
  String joiningDate;
  String address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlue,
        elevation: 0,
        centerTitle: true,
        title: Text("Add a Member"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: darkBlue,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: CircleAvatar(
                backgroundColor: darkBlue,
                backgroundImage: AssetImage("assets/images/ugi.jpg"),
                radius: 70,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: nameWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: phoneNumberWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: addressWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: dateOfJoiningWidget(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: HexColor('#001133'),
        child: Icon(Icons.person_add),
        onPressed: () async {
          if (name == null || phoneNumber == null || joiningDate == null) {
            Fluttertoast.showToast(
              msg: "All Fields are compulsary",
              backgroundColor: Colors.black,
            );
          } else {
            setState(() {
              user = Users(
                hasPaid: false,
                isActive: true,
                joiningDate: joiningDate,
                name: name,
                phoneNumber: phoneNumber,
              );
            });
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            );
            await FirebaseFunctions().createUserRecord(user);
          }
        },
      ),
    );
  }

  Widget nameWidget() {
    return TextFormField(
      onChanged: (value) {
        name = value.trim();
      },
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        fillColor: Colors.white,
        focusColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 6.0),
        ),
        hintText: "Enter name",
        prefixIcon: Icon(Icons.person),
      ),
    );
  }

  Widget phoneNumberWidget() {
    return TextFormField(
      onChanged: (value) {
        phoneNumber = value.trim();
      },
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 6.0),
          ),
          hintText: "Enter Phone Number",
          prefixIcon: Icon(Icons.phone)),
    );
  }

  Widget dateOfJoiningWidget() {
    return TextFormField(
      onChanged: (value) {
        joiningDate = value.trim();
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 6.0),
        ),
        hintText: "Choose Date of Joining",
        prefixIcon: Icon(Icons.date_range),
      ),
    );
  }

  Widget addressWidget() {
    return TextFormField(
      onChanged: (value) {
        address = value.trim();
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 6.0),
          ),
          hintText: "Enter Address",
          prefixIcon: Icon(Icons.location_on)),
    );
  }
}
