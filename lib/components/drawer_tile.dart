import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final Color iconColor;
  final title;
  final IconData icon;
  final Function onPress;
  DrawerTile({this.icon, this.iconColor, this.title, this.onPress});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: ListTile(
        title: Text(title),
        leading: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
