import 'package:flutter/material.dart';
import 'package:potoaapp/pages/cal.dart';
import 'package:potoaapp/pages/contact.dart';
import 'package:potoaapp/pages/home.dart';

void main (){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mainpage());

  }
}

class Mainpage extends StatefulWidget {
  //const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _currentIndex = 0;
  final tabs = [HomePage(),CalculatePage(),Contactpage()]; // [] --> list เก็บค่าได้หลายค่า เริ่มนับจาก 0


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Count',style: TextStyle(fontSize: 35,fontFamily: 'Sati'),)),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),// current index[0]
            BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Calculate"),// current index [1]
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail),label: "Contact"),// current index [2]
          ], // <-- U can see ICONS that the left side!! 41 42 43

          onTap: (index){
            setState(() {
              print(index);
              _currentIndex = index;
            });
          },
          ),
      );
  }
}