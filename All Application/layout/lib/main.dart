import 'package:flutter/material.dart';
import 'package:layout/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { // Stateless widget ไม่มีเปลี่ยนเเปลง Fixed 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide debug Badge

      title: '', //title ไม่ต้องใส่ละ เพราะมันไปอยู๋ใน HomePage()
      home: HomePage() , // link page มาจาก Class --> home.dart 
    );
  }
}
