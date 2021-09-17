import 'package:flutter/material.dart';

class MiddleScrollText extends StatelessWidget {

  final String text;
  // final Function press;
  final double verticalPadding;
  final double horizontalPadding;
  // final double fontSize;

  MiddleScrollText({
    Key key,
    this.text,
    // this.press,
    this.verticalPadding = 16,
    this.horizontalPadding = 0,
    // this.fontSize = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: press,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
        child: Expanded(
          child:(
            Scrollbar(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 24,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          )
        )
      ),
    );
  }
}