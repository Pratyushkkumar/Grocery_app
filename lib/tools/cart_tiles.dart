import 'package:flutter/material.dart';

import 'package:grocery_app/model.dart/cart.dart';
import 'package:grocery_app/model.dart/model.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Items items;
  CartItem({
    super.key,
    required this.items,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove item
  void removeitemss() {
    Provider.of<Cart>(context, listen: false).removeItem(widget.items);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.items.images),
      title: Text(widget.items.itemname),
      subtitle: Text(widget.items.price),
      trailing: Container(
        decoration: BoxDecoration(color: Colors.purple[300],
        borderRadius: BorderRadius.circular(8)),
        
        child: TextButton(
          
          child: Icon(Icons.delete,color: Colors.white,),
          onPressed: 
            removeitemss
          
        ),
      ),
    );
  }
}
