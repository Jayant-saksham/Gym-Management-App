import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ugi/Admin/AdminWidgets/AdminCard.dart';

String imageUrl =
    'https://scontent.fdel5-1.fna.fbcdn.net/v/t1.0-9/57232195_1109540222572859_7210260039892729856_n.jpg?_nc_cat=111&ccb=2&_nc_sid=09cbfe&_nc_ohc=NdZ8RLlYqwAAX-893oo&_nc_ht=scontent.fdel5-1.fna&oh=6f110bd643ad35fa972a80bd6cab00b5&oe=60188DC5';

class AdminPanel extends StatefulWidget {
  @override
  _AdminPanelState createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#001133'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 36,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(imageUrl),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Total Members",
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
              "66",
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
