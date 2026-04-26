import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instaseries/Screens/Home/homescreen.dart';
import 'package:instaseries/Screens/camera/camerascreen.dart';
import 'package:instaseries/Widgets/uihelper.dart';

class Messagescreen extends StatelessWidget {
  Messagescreen({super.key});
 String name = "Siddhu";
  var arrContent = [
    {
      "img": "Oval(0).png",
      "name": "joshua_l",
      "lastname": "Have a nice day"
    },
    {
      "img": "Profile Photo (1).png",
      "name": "karennne",
      "lastname": "I heard this is a good movie,"
    },
    {
      "img": "Profile Photo (3).png",
      "name": "martini_rond",
      "lastname": "See you on the next meeting!"
    },
    {
      "img": "Profile Photo (4).png",
      "name": "andrewww_",
      "lastname": "Sounds good 😂😂😂"
    },
    {
      "img": "Profile Photo (5).png",
      "name": "kiero_d",
      "lastname": "The new design looks cool, b…"
    },
    {
      "img": "Profile Photo(6).png",
      "name": "maxjacobson",
      "lastname": "Thank you, bro!"
    },
    {
      "img": "Profile Photo (2).png",
      "name": "jamie.franco",
      "lastname": "Yeap, I'm going to travel in To"
    },
    {
      "img": "Profile Photo (1).png",
      "name": "karennne",
      "lastname": "I heard this is a good movie,"
    },
    {
      "img": "Profile Photo (3).png",
      "name": "martini_rond",
      "lastname": "See you on the next meeting!"
    },
    {
      "img": "Profile Photo (4).png",
      "name": "andrewww_",
      "lastname": "Sounds good 😂😂😂"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Homescreen(),
              ),
            );
          },
          icon: Icon(CupertinoIcons.back),
        ),
        title: Center(
          child: Text(
            "Sujal_dave ⌄",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.add,
              size: 34,
            ),
          ),
        ],
      ),

      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.black12,
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_rounded,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
           

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: arrContent.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Uihelper.CustomImages(
                        imgurl: arrContent[index]["img"].toString(),
                      ),
                      title: Text(
                        arrContent[index]["name"].toString(),
                      ),
                      subtitle: Text(
                        arrContent[index]["lastname"].toString(),
                      ),
                      trailing: Uihelper.CustomImages(imgurl: "Camera Icon.png"),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        
      ),
      floatingActionButton: SizedBox(height: 60, width: double.infinity,
      child: ElevatedButton(onPressed: (){

        Navigator.push(context, MaterialPageRoute(builder: (context) => Camerascreen(),));
      }, child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Uihelper.CustomImages(imgurl: "Camera1.png"),
          SizedBox(width: 10,),
          Text("Camera", style: TextStyle(fontSize: 13, color: Colors.white54),)
        ],
      )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}