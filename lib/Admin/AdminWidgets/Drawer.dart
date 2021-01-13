import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

String imageUrl =
    'https://scontent.fdel5-1.fna.fbcdn.net/v/t1.0-9/57232195_1109540222572859_7210260039892729856_n.jpg?_nc_cat=111&ccb=2&_nc_sid=09cbfe&_nc_ohc=NdZ8RLlYqwAAX-893oo&_nc_ht=scontent.fdel5-1.fna&oh=6f110bd643ad35fa972a80bd6cab00b5&oe=60188DC5';

Widget myDrawer(context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: HexColor('#001133'),
          ),
          accountEmail: Text(
            "Admin",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          accountName: Text(
            "Shanky Singh",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          currentAccountPicture: ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image(
              image: NetworkImage(imageUrl),
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        ListTile(
          title: Text("Add Member"),
          leading: Icon(Icons.person_add),
          // onTap: () => Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => Requests(),
          //   ),
          // ),
        ),
        SizedBox(height: 10),
        ListTile(
          title: Text("Fees"),
          leading: Icon(Icons.attach_money),
          // onTap: () => Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => AllUsers(),
          //   ),
          // ),
        ),
        SizedBox(height: 10),
        ListTile(
          title: Text("All Members"),
          leading: Icon(Icons.group),
          // onTap: () => Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => AllCars(),
          //   ),
          // ),
        ),
        SizedBox(
          height: 100,
        ),
      ],
    ),
  );
}
