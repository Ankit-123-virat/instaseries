import 'package:flutter/material.dart';
import 'package:instaseries/Screens/messages/messagescreen.dart';
import 'package:instaseries/Widgets/uihelper.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  var arrContent = [
    {
      "img":
          "https://assets.ajio.com/medias/sys_master/root/20221227/XrCH/63ab261faeb269659c10a7ea/-473Wx593H-410354410-27e-MODEL.jpg",
      "name": "Your Story",
    },
    {
      "img":
          "https://media.gettyimages.com/id/79717949/photo/kuala-lumpur-malaysia-virat-kohli-of-india-poses-during-the-icc-u-19-cricket-world-cup-official.jpg?s=612x612&w=gi&k=20&c=mERXmFA5-koHIz0hUvY2nPBV3Ri6qaTEivzeyMxSSc4=",
      "name": "Virat_kohli",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCOzqK98GFG6a0prHaJ9D1jf6WJaSUEf-8iQ&s",
      "name": "Mahi_07",
    },

    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/0/02/Jasprit_Bumrah_in_PMO_New_Delhi.jpg",
      "name": "Jasprit93",
    },
    {
      "img":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcz93SZ6dYx_RBdJ8y92yDadarEeGCH6UdjQ&s",
      "name": "Hardik_33",
    },

    {
      "img":
      "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000",
      "name": "Danny_d",
    },
    {
      "img":
      "https://www.wisden.com/static-assets/images/players/60122.png?v=23.77",
      "name": "Kl_Rahul",
    },
    {
      "img":
      "https://upload.wikimedia.org/wikipedia/commons/3/3e/The_cricket_legend_Sachin_Tendulkar_at_the_Oval_Maidan_in_Mumbai_During_the_Duke_and_Duchess_of_Cambridge_Visit%2826271019082%29.jpg",
      "name": "Sachin_10",
    },
    {
      "img":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dVbLMzlaeJnL5C6RpZ8HLRECJhH6ILEGKg&s",
      "name": "kapil_dev",
    },

    {
      "img":
      "https://admin.thecricketer.com/weblab/sites/96c8b790-b593-bfda-0ba4-ecd3a9fdefc2/resources/images/site/shamiheadshot-min.jpg",
      "name": "Rohit_Shana",
    },
    {
      "img":
      "https://i0.wp.com/indiacurrents.com/wp-content/uploads/2018/08/Bhaag-Milkha-Bhaag-Wallpapers-e1534398508784.jpg?fit=600%2C450&ssl=1",
      "name": "Milkha_R11",
    },
    {
      "img":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZVDX5l4-ZTYlbfdeaNxa6EEH2csUn7aMtAA&s",
      "name": "Mike_Tyson",
    },

    {
      "img":
      "https://upload.wikimedia.org/wikipedia/commons/0/02/Jasprit_Bumrah_in_PMO_New_Delhi.jpg",
      "name": "Jasprit93",
    },
    {
      "img":
      "https://m.media-amazon.com/images/M/MV5BNTdiNjA1NGEtMjk1OC00YjQ4LThmYmEtNWUxMjY0NmEyYzdiXkEyXkFqcGc@._V1_.jpg",
      "name": "Dhanush_11",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black12,
        leading: Uihelper.CustomImages(imgurl: "Camera Icon.png"),
        title: Center(
          child: Uihelper.CustomImages(imgurl: "Instagram Logo (1).png"),
        ),
       actions: [
         IconButton(onPressed: () {

         }, icon: Uihelper.CustomImages(imgurl: "IGTV.png")),
         IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Messagescreen()));

         }, icon: Uihelper.CustomImages(imgurl: "Messanger.png"))
       ],
      ),

      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// Story Section
              SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: arrContent.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(

                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                             border: Border.all(
                               color: Colors.red,
                               width: 4,
                             ),


                            ),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                arrContent[index]["img"].toString(),
                              ),
                            ),

                          ),
                          SizedBox(height: 5),
                          Text(
                            arrContent[index]["name"].toString(),
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              /// Post Header
              Container(
                height: 64,
                width: double.infinity,
                color: Colors.black12,
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(

                            width: 4, color: Colors.red)),
                        child: Uihelper.CustomImages(imgurl: "Oval.png")
                    ),
                  ),
                  title: Text(
                    "Joun_deso 🔵",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0XFFF9F9F9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Indore, India",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Uihelper.CustomImages(imgurl: "More Icon.png"),
                ),
              ),

              /// Post Image
              Container(
                clipBehavior: Clip.antiAlias,
                height: 375,
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Uihelper.CustomImages(imgurl: "Rectangle (1).png"),
              ),
                 SizedBox(
                 height: 5,
                 ),
              /// Bottom Icons Row
              Container(
                height: 25,
                width: 380,

                child: Row(
                  children: [
                    Uihelper.CustomImages(imgurl: "Like.png"),
                    SizedBox(width: 15),

                    Uihelper.CustomImages(imgurl: "Comment.png"),
                    SizedBox(width: 15),

                    Uihelper.CustomImages(imgurl: "Messanger.png"),

                    SizedBox(width: 240),
                    Uihelper.CustomImages(imgurl: "Shape.png"),
                  ],
                ),


              ),


              Container(
                height: 105,
                width: 380,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 2,
                          ),
                          child: Uihelper.CustomImages(
                            imgurl: "Oval.png",
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 8,
                          ),
                          child: Text(
                            "Liked by sujal_dave and 3.2M others",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        top: 2,
                      ),
                      child: Text(
                        "sujal_dave The game in Japan was amazing and I want to share some photos",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 64,
                width: double.infinity,
                color: Colors.black12,
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Uihelper.CustomImages(imgurl: "Oval.png"),
                  ),
                  title: Text(
                    "David_Hussy 🔵",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0XFFF9F9F9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Paris, newyork",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Uihelper.CustomImages(imgurl: "More Icon.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
