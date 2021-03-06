import 'package:flutter/material.dart';
import 'package:ugi/Admin/AdminWidgets/AdminCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ugi/Theme/color.dart';
import './AdminWidgets/Drawer.dart';
import 'package:ugi/constants/assetImages.dart';

GlobalKey<ScaffoldState> drawerKey = GlobalKey();

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
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
        ),
        backgroundColor: darkBlue,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Admin",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: darkBlue,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 56,
              backgroundImage: AssetImage(hackerGif),
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
              "₹ " + "6000",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: green,
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
                  titleColor: indigo,
                  contentColor: Colors.white,
                ),
                AdminCard(
                  titleImage: Image.asset(
                    "assets/images/user.png",
                    width: 30,
                  ),
                  backgroundColor: indigo,
                  title: "Inactive",
                  content: "30",
                  titleColor: amber,
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
                  backgroundColor: orange,
                  title: "Unpaid",
                  content: "30",
                  titleColor: indigo,
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
