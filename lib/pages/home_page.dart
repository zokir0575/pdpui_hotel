import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
static final String id='home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#header
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpg"),
                  fit: BoxFit.cover
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.3),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("What kind of hotel do you need?", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: Colors.white), textAlign: TextAlign.center,),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          hintText: "Search for hotel...",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(height: 35,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            //#body
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Best hotels", style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 30,),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image:"assets/images/ic_image1.jpg", title: "Hotel1"),
                        makeItem(image:"assets/images/ic_image2.jpg", title: "Hotel2"),
                        makeItem(image:"assets/images/ic_image3.jpg", title: "Hotel3"),
                        makeItem(image:"assets/images/ic_image4.jpg", title: "Hotel4"),
                        makeItem(image:"assets/images/ic_image5.jpg", title: "Hotel5"),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  //#body2
                  Text("Luxury Hotels", style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 30,),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        makeItem(image:"assets/images/ic_image1.jpg", title: "Hotel1"),
                        makeItem(image:"assets/images/ic_image2.jpg", title: "Hotel2"),
                        makeItem(image:"assets/images/ic_image3.jpg", title: "Hotel3"),
                        makeItem(image:"assets/images/ic_image4.jpg", title: "Hotel4"),
                        makeItem(image:"assets/images/ic_image5.jpg", title: "Hotel5"),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                 //#body3
                 SizedBox(height: 30,),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        makeItem(image:"assets/images/ic_image1.jpg", title: "Hotel1"),
                        makeItem(image:"assets/images/ic_image2.jpg", title: "Hotel2"),
                        makeItem(image:"assets/images/ic_image3.jpg", title: "Hotel3"),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget makeItem({image, title}){
    return AspectRatio(
      aspectRatio: 1.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit:  BoxFit.cover,
          )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),
              ]
            )
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(color: Colors.grey, fontSize: 20),),
                  SizedBox(width: 30,),
                 Container(
                   child: Icon(
                     Icons.favorite, color: Colors.red,
                   ),
                 ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
