import 'package:flutter/material.dart';
import 'package:ugi/Theme/color.dart';
import 'package:ugi/Model/Users.dart';

class Fee extends StatefulWidget {
  Users user;
  Fee({this.user});
  @override
  _FeeState createState() => _FeeState();
}

class _FeeState extends State<Fee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      appBar: AppBar(
        backgroundColor: darkBlue,
        elevation: 0,
        centerTitle: true,
        title: Text("Fee Status"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                "assets/images/user.png",
              ),
            ),
            title: Text(
              "Jayant Saksham",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle:
                Text("Pradhan Enclave", style: TextStyle(color: Colors.white)),
            trailing: CircleAvatar(
              backgroundColor: green,
              child: Text("P"),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                "assets/images/user.png",
              ),
            ),
            title: Text(
              "Jayant Saksham",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle:
                Text("Pradhan Enclave", style: TextStyle(color: Colors.white)),
            trailing: CircleAvatar(
              backgroundColor: orange,
              child: Text("NP"),
            ),
          ),
        ],
      ),
    );
  }
}
