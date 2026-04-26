import 'package:flutter/material.dart';
import 'package:instaseries/Widgets/uihelper.dart';

class Followingscreen extends StatefulWidget {
  const Followingscreen({super.key});

  @override
  State<Followingscreen> createState() => _FollowingscreenState();
}

class _FollowingscreenState extends State<Followingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 54,
              width: double.infinity,

              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text("Follow Request", style: TextStyle(fontSize: 20)),
              ),
            ),

            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 10, bottom: 10),
                  child: Text("Today", style: TextStyle(fontSize: 14)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 6),
              child: ListTile(
                leading: Uihelper.CustomImages(imgurl: "you13.png"),
                title: Text("Karrne liked your photo  .h"),
                trailing: Uihelper.CustomImages(imgurl: "you12.png"),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: ListTile(
                leading: Uihelper.CustomImages(imgurl: "you5.png"),
                title: Text("kiero_d, zackjohn and 26 others liked"),
                subtitle: Text("your photo. 2h"),
                trailing: Uihelper.CustomImages(imgurl: "you14.png"),
              ),
            ),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.only(
                    left: 18,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text("Yesterday", style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(),
              child: ListTile(
                leading: Uihelper.CustomImages(imgurl: "you7.png"),
                title: Text("Ronny liked you photo  .2h"),
                trailing: Uihelper.CustomImages(imgurl: "you6.png"),
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.only(
                    left: 18,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text("Week ago", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 12,
                top: 5,
                bottom: 5,
              ),
              child: ListTile(
                contentPadding: EdgeInsets.zero,

                leading: Uihelper.CustomImages(
                  imgurl: "you21.png",
                ),

                title: Text(
                  "Merry_olly started following you • 5 days ago",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),

                trailing: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(6),
                  ),

                  child: Text(
                    "Follow Back",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

Padding(
  padding:   const EdgeInsets.only(
  left: 8,
  right: 4,
  top: 5,
  bottom: 5,

),
  child: ListTile(
    leading: Uihelper.CustomImages(imgurl: "you20.png"),
    title: Text("maxcoricca start folloeing you  .6d"),
    trailing: Container(

      padding: EdgeInsetsGeometry.symmetric(
        vertical: 8,
        horizontal: 6,


      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          shape: BoxShape.rectangle, color: Colors.black12),
      child: Text("Message",style: TextStyle(color: Colors.blue, fontSize: 16),),
    ),
  ),
)
          ],
        ),
      ),
    );
  }
}
