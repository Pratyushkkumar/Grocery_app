import 'package:flutter/material.dart';
import 'package:grocery_app/model.dart/model.dart';
import 'package:grocery_app/tools/tiles.dart';
import 'package:provider/provider.dart';

import '../model.dart/cart.dart';

class Veggies extends StatelessWidget {
  const Veggies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
      ),
      body: Consumer<Cart>(
        builder: ((context, value, child) =>
            Container(
              child: ListView.builder(itemBuilder: (context, index) {
                while ((index < 3) ) {
                  Items items = value.getItemList()[index+3];
             
                  return Tiles(items: items);
                }
              }),
            )),
      ),
    );
  }
}
