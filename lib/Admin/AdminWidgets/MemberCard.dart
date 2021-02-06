import 'package:flutter/material.dart';
import 'package:ugi/Theme/color.dart';
import 'package:ugi/Model/Users.dart';
import '../AdminPages/UserProfile.dart';

class MemberCard extends StatelessWidget {
  Users users;
  MemberCard({this.users});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserProfile(
              user: users,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 164,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: indigo,
          ),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        users.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      CircleAvatar(
                        radius: 26,
                        backgroundImage: AssetImage("assets/images/ugi.jpg"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 1, bottom: 1),
                          child: Text(
                            users.joiningDate,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        users.address,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone, color: Colors.white),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        users.phoneNumber,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
