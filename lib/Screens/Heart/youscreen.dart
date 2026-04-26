import 'package:flutter/material.dart';
import 'package:instaseries/Widgets/uihelper.dart';

class Youscreen extends StatefulWidget {
  const Youscreen({super.key});

  @override
  State<Youscreen> createState() => _YouscreenState();
}

class _YouscreenState extends State<Youscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 44,
              width: double.infinity,
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Follow Requests", style: TextStyle(fontSize: 20)),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "New",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: ListTile(
                      leading: Uihelper.CustomImages(imgurl: "you1.png"),
                      title: Text(
                        "Kelly_09 liked your photo  .3h",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      trailing: Uihelper.CustomImages(imgurl: "you2.png"),
                    ),
                  ),
                  // SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 18,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Text("Today", style: TextStyle(fontSize: 14)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,),
                    child: ListTile(
                      leading: Uihelper.CustomImages(imgurl: "you3.png"),
                      title: Text(
                        "Jack_34 liked your photo  .h",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      trailing: Uihelper.CustomImages(imgurl: "you4.png"),
                    ),
                  ),
                ],
              ),

            ),
            SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text("Yesterday", style: TextStyle(fontSize: 14)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Uihelper.CustomImages(imgurl: "you5.png"),
                title: Text(
                  "Baloch_01 liked your photo  5.h",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                trailing: Uihelper.CustomImages(imgurl: "you6.png"),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Uihelper.CustomImages(imgurl: "you7.png"),
                title: Text(
                  "Ruby001 liked your photo  6.h",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                trailing: Uihelper.CustomImages(imgurl: "you8.png"),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text("1 Week ago", style: TextStyle(fontSize: 14)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Uihelper.CustomImages(imgurl: "you9.png"),
                title: Text(
                  "Jack_07 liked your photo  3 Days Ago",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                trailing: Uihelper.CustomImages(imgurl: "you10.png"),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,

                    ),

                    child: Uihelper.CustomImages(imgurl: "you11.png")),
                title: Text(
                  "Jack_07 liked your photo  4 Days Ago",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                trailing: Uihelper.CustomImages(imgurl: "you12.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Uihelper.CustomImages(imgurl: "you13.png"),
                title: Text(
                  "Kelly_09 liked your photo  5 Days ago",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                trailing: Uihelper.CustomImages(imgurl: "you14.png"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
