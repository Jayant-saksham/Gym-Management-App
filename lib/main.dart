import 'package:flutter/material.dart';
import 'package:ugi/Admin/AdminPanel.dart';
import 'Pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AdminPanel(),
      debugShowCheckedModeBanner: false,
    );
  }
}
