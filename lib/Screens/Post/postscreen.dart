import 'package:flutter/material.dart';

class Postscreen extends StatelessWidget {
  const Postscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.image_search_outlined, size: 200),
              Text("Import From Gallery  ", style: TextStyle(fontSize: 14, color: Colors.blue),),
              Text("Or",style: TextStyle(fontSize: 14, color: Colors.blue)),
              Text("Using Camera ", style: TextStyle(fontSize: 24, color: Colors.blue))
            ],
          ),
        ],
      ),
    );
  }
}
