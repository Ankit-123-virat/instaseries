import 'package:flutter/material.dart';
import 'package:instaseries/Screens/profile/postscreen.dart';
import 'package:instaseries/Screens/profile/tagsscreen.dart';
import 'package:instaseries/Widgets/uihelper.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Uihelper.CustomImages(imgurl: "Private.png"),
              SizedBox(width: 5),
              Text(
                "Jacob_w",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Uihelper.CustomImages(imgurl: "Shapee.png"),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),

              /// Profile Section
              Row(
                children: [
                  SizedBox(width: 20),

                  Uihelper.CustomImages(imgurl: "profileimg.png"),

                  SizedBox(width: 30),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "54",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Posts"),
                          ],
                        ),

                        Column(
                          children: [
                            Text(
                              "834",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Followers"),
                          ],
                        ),

                        Column(
                          children: [
                            Text(
                              "534",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Following"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              /// Bio Section
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sujal Dave",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Digital goodies designer @pixsellz"),
                    Text("Everything is designed."),
                  ],
                ),
              ),

              SizedBox(height: 10),

              /// Edit Profile Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 35,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              /// Highlight Section
              SizedBox(
                height: 110,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      /// New
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                                border: Border.all(
                                  color: Colors.grey.shade50,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("New"),
                          ],
                        ),
                      ),

                      /// Sports
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                                border: Border.all(
                                  color: Colors.grey.shade50,
                                ),
                              ),
                              child: Uihelper.CustomImages(
                                imgurl: "story1.png",
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Sports"),
                          ],
                        ),
                      ),

                      /// Cricket
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                                border: Border.all(
                                  color: Colors.grey.shade50,
                                ),
                              ),
                              child: Uihelper.CustomImages(
                                imgurl: "story3.png",
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Cricket"),
                          ],
                        ),
                      ),

                      /// Fashion
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                                border: Border.all(
                                  color: Colors.grey.shade50,
                                ),
                              ),
                              child: Uihelper.CustomImages(
                                imgurl: "story2.png",
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Fashion"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// Tab Section
          /// Tab Section
          SizedBox(
            height: 50,
            child: AppBar(
              bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    icon: Uihelper.CustomImages(
                      imgurl: "Tab1.png",
                    ),
                  ),
                  Tab(
                    icon: Uihelper.CustomImages(
                      imgurl: "Tab2.png",
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 400,
            child: TabBarView(
              children: [
                PostscreenProfile(),
                Tagsscreen(),
              ],
            ),
          ),

            ],
          ),
        ),
      ),
    );
  }
}