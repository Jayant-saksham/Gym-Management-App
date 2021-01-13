import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

String imageUrl =
    'https://scontent.fdel5-1.fna.fbcdn.net/v/t1.0-9/57232195_1109540222572859_7210260039892729856_n.jpg?_nc_cat=111&ccb=2&_nc_sid=09cbfe&_nc_ohc=NdZ8RLlYqwAAX-893oo&_nc_ht=scontent.fdel5-1.fna&oh=6f110bd643ad35fa972a80bd6cab00b5&oe=60188DC5';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#001133'),
      // appBar: AppBar(
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: Icon(Icons.menu),
      //     onPressed: () {},
      //   ),
      //   backgroundColor: HexColor('#001133'),
      //   title: Text("Gym"),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(imageUrl),
              ),
              Text(
                "Jayant Saksham",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 6,),
              Text(
                "Member since August, 2019",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
