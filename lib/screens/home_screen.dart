import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/authentication.dart';
import 'package:shop_app/components/drawer_tile.dart';
import 'package:shop_app/components/image_slider.dart';
import 'package:shop_app/components/category_list_view.dart';
import 'package:shop_app/components/product_gridview.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/cart_screen.dart';

class HomePage extends StatefulWidget {
  User user;
  HomePage({this.user});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: Text('E Shopping'),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                  widget.user != null ? widget.user.displayName : 'Guest User'),
              accountEmail: Text(widget.user != null
                  ? widget.user.email
                  : 'guest@example.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(widget.user != null
                      ? widget.user.photoURL
                      : 'https://png.pngtree.com/element_our/png/20181206/users-vector-icon-png_260862.jpg'),
                ),
              ),
            ),
            DrawerTile(
              title: 'Home Page',
              icon: Icons.home,
              iconColor: kMainColor,
              onPress: () {},
            ),
            DrawerTile(
              title: 'My Account',
              icon: Icons.person,
              iconColor: kMainColor,
              onPress: () {},
            ),
            DrawerTile(
              title: 'My Orders',
              icon: Icons.shopping_basket,
              iconColor: kMainColor,
              onPress: () {},
            ),
            DrawerTile(
              title: 'Shopping Cart',
              icon: Icons.shopping_cart,
              iconColor: kMainColor,
              onPress: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              },
            ),
            DrawerTile(
              title: 'Favourites',
              icon: Icons.favorite,
              iconColor: kMainColor,
              onPress: () {},
            ),
            Divider(),
            DrawerTile(
              title: 'Setting',
              icon: Icons.settings,
              iconColor: Colors.grey,
              onPress: () {},
            ),
            DrawerTile(
              title: 'About',
              icon: Icons.help,
              iconColor: Colors.blue,
              onPress: () {},
            ),
            DrawerTile(
              title: 'Sign out',
              icon: Icons.logout,
              iconColor: Colors.grey,
              onPress: () {
                Authentication.signOut(context: context);
                setState(() {
                  widget.user = null;
                });
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          ImageSlider(),
          Padding(padding: EdgeInsets.all(9.0), child: Text('Categories')),
          HorizontalList(),
          Padding(
            padding: EdgeInsets.only(top: 20.0, left: 9.0),
            child: Text('Recent Products'),
          ),
          Products(),
        ],
      ),
    );
  }
}
