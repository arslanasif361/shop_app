import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/components/chooser.dart';
import 'package:shop_app/components/prod_detail_tile.dart';
import 'package:shop_app/components/customized_grid_view.dart';
import 'package:shop_app/screens/home_screen.dart';

class ProductDetails extends StatefulWidget {
  final prod_name;
  final prod_old_price;
  final prod_new_price;
  final prod_pic;
  ProductDetails(
      {this.prod_name,
      this.prod_new_price,
      this.prod_old_price,
      this.prod_pic});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  var similarProducts = [
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Text('E Shopping')),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              // header: Text("GridTile header", style: TextStyle(color: Colors.black)),
              child: Container(
                child: Image.asset(
                  widget.prod_pic,
                  fit: BoxFit.contain,
                ),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    '${widget.prod_name}',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$${widget.prod_new_price}',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: kMainColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  '\$${widget.prod_old_price}',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15.0,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          Row(
            children: [
              Expanded(
                child: Chooser(
                  chooser_title: 'Size',
                  chooser_content: 'choose your size',
                ),
              ),
              Expanded(
                child: Chooser(
                  chooser_title: 'Color',
                  chooser_content: 'choose color',
                ),
              ),
              Expanded(
                child: Chooser(
                  chooser_title: 'Qty',
                  chooser_content: 'choose Quantity',
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    textColor: Colors.white,
                    elevation: 0.2,
                    onPressed: () {},
                    color: kMainColor,
                    child: Text('Buy Now'),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: kMainColor,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.share,
                      color: kMainColor,
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          ListTile(
            title: Text('Product Description'),
            subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s. '),
          ),
          Divider(),
          ProdDetailTile(
            title: 'Product Name:',
            value: widget.prod_name,
          ),
          ProdDetailTile(
            title: 'Product Condition:',
            value: 'Condition',
          ),
          ProdDetailTile(
            title: 'Product Brand:',
            value: 'Brand',
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(14.0, 6.0, 0.0, 0.0),
            child: Text(
              'Similar Products',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          CustomizedGridView(
            itemsList: similarProducts,
          ),
        ],
      ),
    );
  }
}
