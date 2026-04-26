import 'package:flutter/material.dart';
import 'package:instaseries/Screens/Heart/heartscreen.dart';
import 'package:instaseries/Screens/Home/homescreen.dart';
import 'package:instaseries/Screens/Post/postscreen.dart';
import 'package:instaseries/Screens/profile/profilescreen.dart';
import 'package:instaseries/Screens/search/searchscreen.dart';
import 'package:instaseries/Widgets/uihelper.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentIndex = 0;

  // ✅ Fixed: pages count = nav items count
  final List<Widget> pages = [
    Homescreen(),
    Searchscreen(),
    Postscreen(),
    Heartscreen(),
    Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages,),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:  Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex, // ✅ added
        onTap: (index) {
          // ✅ added
          setState(() {
            currentIndex = index;
          });
        },

        // type: BottomNavigationBarType.fixed, // ✅ for 5 items

        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImages(imgurl: "Tab 1.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImages(imgurl: "Tab 2.png"),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImages(imgurl: "Tab 3.png"),
            label: "Post",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImages(imgurl: "Tab 4.png"),
            label: "Likes",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImages(imgurl: "Tab 5.png"),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
