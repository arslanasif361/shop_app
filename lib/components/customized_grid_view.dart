import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/components/prod_detail_tile.dart';
import 'package:shop_app/screens/produc_detail_screen.dart';

class CustomizedGridView extends StatelessWidget {
  final List itemsList; //accepts a list of maps with 4 properties
  CustomizedGridView({this.itemsList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // mainAxisSpacing: 10.0,
          // crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Product(
            prodName: itemsList[index]['name'],
            prodPic: itemsList[index]['picture'],
            oldPrice: itemsList[index]['old_price'],
            price: itemsList[index]['price'],
          );
        });
  }
}

class Product extends StatelessWidget {
  final prodName;
  final prodPic;
  final oldPrice;
  final price;
  Product({this.prodName, this.prodPic, this.oldPrice, this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductDetails(
                    prod_name: prodName,
                    prod_new_price: price,
                    prod_old_price: oldPrice,
                    prod_pic: prodPic,
                  )),
        );
      },
      child: Card(
        child: GridTile(
          // header: Text("GridTile header", style: TextStyle(color: Colors.black)),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Image.asset(
              prodPic,
              fit: BoxFit.contain,
            ),
          ),
          footer: Container(
            color: Colors.white70,
            child: ListTile(
              leading: Text(
                prodName,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              ),
              title: Text(
                '\$$price',
                style: TextStyle(
                  color: kMainColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              subtitle: Text(
                '\$$oldPrice',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.lineThrough),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
