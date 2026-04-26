import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instaseries/Screens/loginscreen/loginscreen.dart';
import 'package:instaseries/Widgets/uihelper.dart';

class Spalashscreen extends StatefulWidget {
  const Spalashscreen({super.key});

  @override
  State<Spalashscreen> createState() => _SpalashscreenState();
}

class _SpalashscreenState extends State<Spalashscreen> {
  @override

  void initState(){
    super.initState();{
      Timer (Duration(seconds: 4),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  Loginscreen()
        ),
        );
      }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        // 🔥 important
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 🔥 center vertically
          children: [
            Uihelper.CustomImages(imgurl: "image1.png"),
            SizedBox(height: 15),
            Uihelper.CustomImages(imgurl: "image2.png"),
          ],
        ),
      ),
    );
  }
}
