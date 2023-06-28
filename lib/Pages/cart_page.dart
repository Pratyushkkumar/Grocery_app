import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/model.dart/cart.dart';
import 'package:grocery_app/model.dart/model.dart';
import 'package:grocery_app/tools/cart_tiles.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
   CartPage({super.key});
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
        ),
        backgroundColor:  Color.fromARGB(255, 214, 248, 232),
        body: Consumer<Cart>(
          builder: (context, value, child) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text("The Cart",
                        style: GoogleFonts.roboto(
                            fontSize: 42,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[500]))
                  ],
                ),
                Divider(
                  color: Colors.grey, //color of divider
                  height: 5, //height spacing of divider
                  thickness: 1, //thickness of divier line
                  //indent: 25, //spacing at the start of divider
                  //endIndent: 25, //spacing at the end of divider
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: value.usercart.length,
                        itemBuilder: (context, index) {
                          Items indivialitem = value.show()[index];

                          return CartItem(items: indivialitem);
                        })),
                        
               
              ],
            );
          },
        )
        );
        
  }

}
 
  
