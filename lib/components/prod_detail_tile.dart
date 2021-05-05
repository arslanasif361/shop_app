import 'package:flutter/material.dart';

class ProdDetailTile extends StatelessWidget {
  final title;
  final value;
  ProdDetailTile({this.title, this.value});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 3),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
