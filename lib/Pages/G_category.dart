import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/Pages/bakery.dart';
import 'package:grocery_app/Pages/fruits.dart';
import 'package:grocery_app/Pages/vegetables.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 248, 232),
        body: Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Categories",
                    style: GoogleFonts.robotoSlab(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Color.fromARGB(255, 236, 232, 238)),
                  ),
                ],
              ),
            ],
          ),
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.purple[300],
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        SizedBox(
          height: 90,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Fruits()));
              },
              child: Column(
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        // color: Color.fromARGB(209, 78, 79, 129),
                        image: DecorationImage(
                            image: AssetImage("assets/images/999.jpg"),
                            fit: BoxFit.fill),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0, // soften the shadow
                            spreadRadius: 3.0, //extend the shadow
                            offset: Offset(
                              3.0, // Move to right 5  horizontally
                              3.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ]),
                  ),
                  SizedBox(height: 3,),
                  Text("Fruits",style: GoogleFonts.roboto(fontSize: 15,fontStyle: FontStyle.italic,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
            SizedBox(
              width: 60,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Veggies()));
              },
              child: Column(
                children: [
                  Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(246, 254, 236, 249),
                          image: DecorationImage(
                              image: AssetImage("assets/images/31736.jpg"),
                              fit: BoxFit.fill),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0, // soften the shadow
                              spreadRadius: 3.0, //extend the shadow
                              offset: Offset(
                                3.0, // Move to right 5  horizontally
                                3.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ])),
                          SizedBox(height: 3,),
                  Text("Vegetables",style: GoogleFonts.roboto(fontSize: 15,fontStyle: FontStyle.italic,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            GestureDetector(
              onTap:  () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Bakery()));
              },
              child: Column(
                children: [
                  Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(246, 254, 236, 249),
                          image: DecorationImage(
                              image: AssetImage("assets/images/234.jpg"),
                              fit: BoxFit.fill),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0, // soften the shadow
                              spreadRadius: 2.0, //extend the shadow
                              offset: Offset(
                                3.0, // Move to right 5  horizontally
                                3.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ])),
                          SizedBox(height: 3,),
                  Text("Bakery",style: GoogleFonts.roboto(fontSize: 15,fontStyle: FontStyle.italic,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }
}
