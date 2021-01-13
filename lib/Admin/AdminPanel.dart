import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ugi/Admin/AdminWidgets/AdminCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import './AdminWidgets/Drawer.dart';
GlobalKey<ScaffoldState> drawerKey = GlobalKey();


String imageUrl =
    'https://scontent.fdel5-1.fna.fbcdn.net/v/t1.0-9/57232195_1109540222572859_7210260039892729856_n.jpg?_nc_cat=111&ccb=2&_nc_sid=09cbfe&_nc_ohc=NdZ8RLlYqwAAX-893oo&_nc_ht=scontent.fdel5-1.fna&oh=6f110bd643ad35fa972a80bd6cab00b5&oe=60188DC5';

class AdminPanel extends StatefulWidget {
  @override
  _AdminPanelState createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  @override
  void initState() {
    super.initState();
    // FirebaseFirestore.instance.collection("Users").doc("Test").set({
    //   "Name": "Jayant",
    //   "Date of joining": DateTime.now(),
    //   "Phone Number": "9319970198",
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: myDrawer(context),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
        ),
        backgroundColor: HexColor('#001133'),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Admin",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: HexColor('#001133'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'assets/images/ugi.jpg'
              )
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Revenue Generated",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              "₹ " + "66000",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AdminCard(
                  titleImage: Image.asset(
                    "assets/images/done.png",
                    width: 30,
                  ),
                  backgroundColor: Colors.amber,
                  title: "Active",
                  content: "56",
                  titleColor: Colors.indigo,
                  contentColor: Colors.white,
                ),
                AdminCard(
                  titleImage: Image.asset(
                    "assets/images/user.png",
                    width: 30,
                  ),
                  backgroundColor: Colors.indigo,
                  title: "Inactive",
                  content: "30",
                  titleColor: Colors.amber,
                  contentColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AdminCard(
                  titleImage: Image.asset(
                    "assets/images/done.png",
                    width: 30,
                  ),
                  backgroundColor: Colors.green,
                  title: "Paid",
                  content: "56",
                  titleColor: Colors.white,
                  contentColor: Colors.white,
                ),
                AdminCard(
                  titleImage: Image.asset(
                    "assets/images/user.png",
                    width: 30,
                  ),
                  backgroundColor: Colors.orange[800],
                  title: "Unpaid",
                  content: "30",
                  titleColor: Colors.indigo,
                  contentColor: Colors.white,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: AdminCard(
                      titleImage: Image.asset(
                        "assets/images/user.png",
                        width: 30,
                      ),
                      backgroundColor: Colors.pink,
                      title: "New Members",
                      content: "5",
                      titleColor: Colors.white,
                      contentColor: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {},
      ),
    );
  }
}
