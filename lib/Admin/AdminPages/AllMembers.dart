import 'package:flutter/material.dart';
import 'package:ugi/Theme/color.dart';
import '../AdminWidgets/MemberCard.dart';
import 'package:ugi/Model/Users.dart';

class AllMembers extends StatefulWidget {
  @override
  _AllMembersState createState() => _AllMembersState();
}

class _AllMembersState extends State<AllMembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      appBar: AppBar(
        backgroundColor: darkBlue,
        elevation: 0,
        centerTitle: true,
        title: new Text(
          "All Members",
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MemberCard(
              users: Users(
                name: "Jayant Saksham",
                hasPaid: true,
                address: "Pradhan Enclave, Burari, Delhi",
                isActive: true,
                joiningDate: "August, 2019",
                phoneNumber: "9654981773",
              ),
            ),
            MemberCard(
              users: Users(
                name: "Baua Kashyap",
                hasPaid: false,
                address: "Azad Nagar, Khadra, Lucknow",
                isActive: true,
                joiningDate: "August, 2019",
                phoneNumber: "9654981773",
              ),
            ),
            MemberCard(
              users: Users(
                name: "Baua Kashyap",
                hasPaid: false,
                address: "Azad Nagar, Khadra, Lucknow",
                isActive: true,
                joiningDate: "August, 2019",
                phoneNumber: "9654981773",
              ),
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
    );
  }
}
