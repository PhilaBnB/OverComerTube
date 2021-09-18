import 'package:flutter/material.dart';

class MiddleAmberBoldText extends StatelessWidget {

  final String text;
  final BuildContext buildContext;
  // final Function press;
  final double verticalPadding;
  final double horizontalPadding;
  // final double fontSize;

  MiddleAmberBoldText({
    Key key,
    this.text,
    this.buildContext,
    // this.press,
    this.verticalPadding = 16,
    this.horizontalPadding = 0,
    // this.fontSize = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(buildContext);
    var num_langs = _LangsToInt(myLocale);
    switch(num_langs){
      case 1://zh_tw
        return GestureDetector(
          // onTap: press,
          child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
              child: Scrollbar(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.amber[800]
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
          ),
        );
      case 2://en_us
        return GestureDetector(
          // onTap: press,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.amber[800]
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      default:
        return GestureDetector(
          // onTap: press,
          child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
              child: Scrollbar(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.amber[800]
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
          ),
        );
    }
  }
}

_LangsToInt(Locale locale){
  if(locale == Locale('zh', 'TW')){
    return 1;
  }
  else if(locale == Locale('en', 'US')){
    return 2;
  }
}