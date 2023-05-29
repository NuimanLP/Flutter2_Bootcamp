import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  //const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
        child: Column(
        children :[
        SizedBox(height: 25),
        Text("Home Page",style: TextStyle(fontFamily: 'Sati',fontSize: 40),),
        
          ]
        )
      )],

    );
  }
}