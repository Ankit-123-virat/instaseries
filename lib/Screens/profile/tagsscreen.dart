import 'package:flutter/material.dart';

class Tagsscreen extends StatefulWidget {
  const Tagsscreen({super.key});

  @override
  State<Tagsscreen> createState() => _TagsscreenState();
}

class _TagsscreenState extends State<Tagsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(padding: EdgeInsetsGeometry.all(2),
                child: Icon(Icons.camera_alt_outlined, size: 40,),


                ),

                Padding(padding: EdgeInsetsGeometry.all(5),
                child: Text("Photos of You",  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, ),),),

                Padding(padding: EdgeInsetsGeometry.all(1),
                child: Text("When people tag you in photos, they'll appear here.",  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, ),),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
