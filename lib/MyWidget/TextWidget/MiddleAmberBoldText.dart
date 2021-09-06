import 'package:flutter/material.dart';

class MiddleAmberBoldText extends StatelessWidget {

  final String text;
  // final Function press;
  final double verticalPadding;
  final double horizontalPadding;
  // final double fontSize;

  MiddleAmberBoldText({
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
        // alignment: Alignment.center,
        // margin: EdgeInsets.symmetric(vertical: 16),
        padding:
        EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.circular(30),
        //   boxShadow: [
        //     BoxShadow(
        //       offset: Offset(0, 15),
        //       blurRadius: 30,
        //       color: Color(0xFF666666).withOpacity(.11),
        //     ),
        //   ],
        // ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 26,
            color: Colors.amber[800],
            // fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}