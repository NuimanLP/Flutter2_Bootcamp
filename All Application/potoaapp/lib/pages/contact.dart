import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Contactpage extends StatefulWidget {
  //const Contactpage({super.key});

  @override
  State<Contactpage> createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Text("Potato",style: TextStyle(fontFamily: 'Sati',fontSize: 40),),
              Text("contact 093-123-123-12121",style:TextStyle(fontFamily:'Sati',fontSize:45))
            ],
          ),
        )
      ],
    );
  }
}