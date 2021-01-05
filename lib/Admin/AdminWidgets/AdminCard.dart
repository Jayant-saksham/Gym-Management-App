import 'package:flutter/material.dart';

class AdminCard extends StatelessWidget {
  Color backgroundColor;
  Color titleColor;
  Color contentColor;
  String title;
  String content;
  Image titleImage;
  AdminCard({
    this.backgroundColor,
    this.content,
    this.contentColor,
    this.title,
    this.titleColor,
    this.titleImage,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          titleImage,
          Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            content,
            style: TextStyle(
              color: contentColor,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
