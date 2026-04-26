import 'package:flutter/material.dart';
import 'package:instaseries/Screens/Heart/followingscreen.dart';
import 'package:instaseries/Screens/Heart/youscreen.dart';

class Heartscreen extends StatelessWidget {
  const Heartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(tabs: [
          Tab(text: "Following",),
          Tab(text: "you",),
        ],
        indicatorSize:TabBarIndicatorSize.tab,
        indicatorColor: Colors.white,

        ),
      ),
      body: TabBarView(children: [Followingscreen(),
     Youscreen(),
      ]),
    ));
  }
}
