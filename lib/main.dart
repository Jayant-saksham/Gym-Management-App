import 'package:flutter/material.dart';
import 'package:ugi/Admin/AdminPanel.dart';
import 'Pages/HomePage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
