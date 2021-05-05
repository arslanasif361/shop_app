import 'package:flutter/material.dart';

class Chooser extends StatelessWidget {
  final chooser_title;
  final chooser_content;
  Chooser({this.chooser_title, this.chooser_content});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(chooser_title),
                content: Text(chooser_content),
                actions: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('close'),
                  ),
                ],
              );
            });
      },
      textColor: Colors.grey,
      elevation: 0.2,
      child: Row(
        children: [
          Expanded(child: Text(chooser_title)),
          Expanded(child: Icon((Icons.arrow_drop_down)))
        ],
      ),
    );
  }
}
