import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/model.dart/cart.dart';
import 'package:grocery_app/model.dart/model.dart';
import 'package:provider/provider.dart';

class Tiles extends StatelessWidget {
  Items items;
  
  Tiles({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      padding: EdgeInsets.all(12),
      color: Color.fromARGB(255, 214, 248, 232),
      child: Column(
        children: [
          Image.asset(items.images),
          Text(items.itemname, style: GoogleFonts.odibeeSans(fontSize: 40)),
          Row(
            children: [
              Text(items.price,
                  style: GoogleFonts.odibeeSans(
                      fontSize: 30, fontWeight: FontWeight.w300)),
              SizedBox(
                width: 250,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.purple[300],
                  ),
                  height: 36,
                  width: 35,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.purple[300],
                        borderRadius: BorderRadius.circular(8)),
                    child: TextButton(
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      onPressed: () {
                        Provider.of<Cart>(context, listen: false)
                            .addItem(items);
                        
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: AlertDialog(
                                  title: Text("Item Added to Cart"),
                                ),
                              );
                            });
                      },
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
