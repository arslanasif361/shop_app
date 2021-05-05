import 'package:flutter/material.dart';
import 'package:shop_app/components/cart_products_listview.dart';
import 'package:shop_app/constants.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: Text('Cart'),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: MaterialButton(
            height: 40.0,
            color: kMainColor,
            onPressed: () {},
            child: Text(
              'Check Out',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: CartProducts(),
    );
  }
}
