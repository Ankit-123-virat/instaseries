import 'package:flutter/material.dart';
import 'package:instaseries/Widgets/uihelper.dart';

class Searchscreen extends StatelessWidget {
  Searchscreen({super.key});

  final TextEditingController searchController = TextEditingController();

  var arrContent = [

    {
      "img":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Pg4H59PV4BoBl-IVgeGehk8ctXn6YY24tA&s"
    },
    {
      "img":
      "https://newlinesmag.com/wp-content/uploads/GettyImages-2162768886-web.jpg"
    },
    // {"img": "https://w0.peakpx.com/wallpaper/555/273/HD-wallpaper-cricket-match-indian-cricketers-indian-team-hardik-pandya-virat-kohli-thumbnail.jpg"},

    {
      "img":
      "https://rukmini1.flixcart.com/image/1500/1500/xif0q/book/b/a/y/jaun-elia-ek-ajab-ghazab-shayar-original-imahf78wqxe2ctfs.jpeg?q=70"
    },

    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},

    {
      "img":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpMZ2uaoqBuOHgK4G-PiEANGyv-CLxB_VJ4A&s"
    },
    {
      "img":
      "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {"img": "https://images.squarespace-cdn.com/content/v1/511f0ff8e4b083811eaf612c/f8dbfc0f-5e4b-4098-aa2b-bfddbf9b6ade/2024-01-10-Blog+Post+copy.jpg"},

    {
      "img":
      "https://images.icc-cricket.com/image/upload/t_ratio21_9-size30-webp/v1768040600/prd/qucayqiszq5k28hohuso"
    },
    {
      "img":
      "https://i0.wp.com/spartansboxing.com/wp-content/uploads/2023/08/Mike-Tyson.png?fit=1920%2C1080&ssl=1"
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},

    {
      "img":
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img":
      "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},

    {
      "img":
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img":
      "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },
    {"img": "https://pixlr.com/images/generator/how-to-generate.webp"},

    {
      "img":
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img":
      "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_640.jpg"
    },


    {
      "img":
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
    },
    {
      "img":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbwwUcn-4PvpNPjbAWsBQRxpJNgg9CQO2-7g&s"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),

            Row(
              children: [
                const SizedBox(width: 10),

                /// 🔥 Search Box (Responsive)
                Expanded(
                  child: Container(
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0XFF262626),
                    ),
                    child: TextField(
                      controller: searchController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.white54,
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white54,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 8),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                /// 🔥 Image/Icon
                Uihelper.CustomImages(imgurl: "Live (1).png"),

                const SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 15,),

            Row(
              children: [
              SizedBox(
                width: 20,
              ),
               Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                     borderRadius: BorderRadius.circular(5),

                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Uihelper.CustomImages(imgurl: "Icon (1).png"),
                      SizedBox(width: 5,),
                      Text("IGTV",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),)
                    ],
                  ),
                ),

              SizedBox(width: 10,),
               Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5),

                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Uihelper.CustomImages(imgurl: "Icon (3).png"),
                      SizedBox(width: 5,),
                      Text("Shop",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),)
                    ],
                  ),
                ),

              SizedBox(width: 10,),
              Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5),

                  ),
                  child: Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("Style",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                      )
                    ],

                ),
              ),
              SizedBox(width: 10,),
               Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5),

                  ),
                  child: Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("Sports",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                      )
                    ],

                ),
              ),


SizedBox(height: 10,),

            ],
            ),
            SizedBox(height: 15,),
            Expanded(
              child: GridView.builder(
                itemCount: arrContent.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(), // ✅ FIX (IMPORTANT)
                    child: Image.network(
                      arrContent[index]["img"].toString(),
                      fit: BoxFit.cover,

                    ),
                  );
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}