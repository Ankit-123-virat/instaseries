import 'package:flutter/material.dart';

class PostscreenProfile extends StatefulWidget {
  const PostscreenProfile({super.key});

  @override
  State<PostscreenProfile> createState() => _PostscreenProfileState();
}

class _PostscreenProfileState extends State<PostscreenProfile> {
  var arrContent = [
    {
      "img":
      "https://media.gettyimages.com/id/79717949/photo/kuala-lumpur-malaysia-virat-kohli-of-india-poses-during-the-icc-u-19-cricket-world-cup-official.jpg?s=612x612&w=gi&k=20&c=mERXmFA5-koHIz0hUvY2nPBV3Ri6qaTEivzeyMxSSc4=",
    },
    {
      "img":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCOzqK98GFG6a0prHaJ9D1jf6WJaSUEf-8iQ&s",
    },
    {
      "img":
      "https://upload.wikimedia.org/wikipedia/commons/0/02/Jasprit_Bumrah_in_PMO_New_Delhi.jpg",
    },
    {
      "img":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcz93SZ6dYx_RBdJ8y92yDadarEeGCH6UdjQ&s",
    },
    {
      "img":
      "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000",
    },
    {
      "img":
      "https://media.gettyimages.com/id/79717949/photo/kuala-lumpur-malaysia-virat-kohli-of-india-poses-during-the-icc-u-19-cricket-world-cup-official.jpg?s=612x612&w=gi&k=20&c=mERXmFA5-koHIz0hUvY2nPBV3Ri6qaTEivzeyMxSSc4=",
    },
    {
      "img":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCOzqK98GFG6a0prHaJ9D1jf6WJaSUEf-8iQ&s",
    },
    {
      "img":
      "https://upload.wikimedia.org/wikipedia/commons/0/02/Jasprit_Bumrah_in_PMO_New_Delhi.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: arrContent.length, // IMPORTANT
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            child: Image.network(
              arrContent[index]["img"].toString(),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}