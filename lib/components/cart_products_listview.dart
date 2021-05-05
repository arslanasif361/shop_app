import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var cartProducts = [
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "price": 50,
      "size": 'M',
      "color": 'Red',
      "quantity": 1,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "price": 50,
      "size": 'M',
      "color": 'Red',
      "quantity": 1,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "price": 50,
      "size": 'M',
      "color": 'Red',
      "quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cartProducts.length,
        itemBuilder: (context, index) {
          return CartTile(
            cartItemTitle: cartProducts[index]["name"],
            cartItemPic: cartProducts[index]["picture"],
            cartItemColor: cartProducts[index]["color"],
            cartItemQuantity: cartProducts[index]["quantity"],
            cartItemSize: cartProducts[index]["size"],
            cartItemPrice: cartProducts[index]["price"],
          );
        });
  }
}

class CartTile extends StatelessWidget {
  final cartItemTitle;
  final cartItemPic;
  final cartItemSize;
  final cartItemColor;
  final cartItemQuantity;
  final cartItemPrice;

  CartTile(
      {this.cartItemPic,
      this.cartItemPrice,
      this.cartItemTitle,
      this.cartItemSize,
      this.cartItemColor,
      this.cartItemQuantity});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                cartItemPic,
                height: 100.0,
                width: 100.0,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItemTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text('Size:'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          cartItemSize,
                          style: TextStyle(color: kMainColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70.0,
                    ),
                    Row(
                      children: [
                        Text('Color:'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          cartItemColor,
                          style: TextStyle(color: kMainColor),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  '\$$cartItemPrice',
                  style:
                      TextStyle(color: kMainColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                children: [
                  IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
                  Text('$cartItemQuantity'),
                  IconButton(
                      icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
