import 'package:flutter/material.dart';
import 'package:ugi/Theme/color.dart';
import 'package:ugi/constants/assetImages.dart';
import 'package:ugi/Model/Users.dart';
import 'package:ugi/constants/assetImages.dart';

class UserProfile extends StatefulWidget {
  Users user;
  UserProfile({this.user});
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: darkBlue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
          color: Colors.white,
        ),
      ),
      backgroundColor: darkBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(hacker),
          ),
          SizedBox(
            height: 26,
          ),
          Text(
            widget.user.name,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: orange),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: amber),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: 90,
                  decoration: BoxDecoration(
                    color: orange,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        radius: 14,
                        backgroundImage: AssetImage(phone),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.user.phoneNumber,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 90,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(calender),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.user.joiningDate,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(6),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(location),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        widget.user.address,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
