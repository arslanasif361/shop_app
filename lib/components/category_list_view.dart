import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            imageLocation: 'images/cats/dress.png',
            imageTitle: 'Dress',
          ),
          Category(
            imageLocation: 'images/cats/formal.png',
            imageTitle: 'Formal',
          ),
          Category(
            imageLocation: 'images/cats/informal.png',
            imageTitle: 'Informal',
          ),
          Category(
            imageLocation: 'images/cats/jeans.png',
            imageTitle: 'Pants',
          ),
          Category(
            imageLocation: 'images/cats/shoe.png',
            imageTitle: 'Shoe',
          ),
          Category(
            imageLocation: 'images/cats/tshirt.png',
            imageTitle: 'Shirt',
          ),
          Category(
            imageLocation: 'images/cats/accessories.png',
            imageTitle: 'Accessories',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final imageLocation;
  final imageTitle;
  Category({this.imageLocation, this.imageTitle});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 110.0,
          // height: 100.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 100,
            ),
            subtitle: Text(
              imageTitle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
