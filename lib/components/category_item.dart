import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //child  "click from the user"
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 16),
        alignment:
            Alignment.centerLeft, //any shape most probably there is alignment
        height: 65,
        width: double.infinity, //all the available area
        color: color,
        child: Text(
          text!,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
