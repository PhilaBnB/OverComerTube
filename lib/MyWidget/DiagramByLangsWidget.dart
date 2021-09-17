import 'package:flutter/material.dart';

class DiagramByLangsWidget extends StatelessWidget {

  final String diagram;
  final BuildContext buildContext;

  DiagramByLangsWidget({
    Key key,
    this.diagram,
    this.buildContext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(buildContext);
    var num_langs = _LangsToInt(myLocale);
    switch(num_langs){
      case 1://zh_tw
        return Image.asset('assets/'+diagram+'_tw.png');
      case 2://en_us
        return Image.asset('assets/'+diagram+'_en.png');
      default:
        return Image.asset('assets/'+diagram+'_tw.png');
    }
  }
}

_LangsToInt(Locale locale){
  if(locale == Locale('zh', 'TW')){
    print('tw');
    return 1;
  }
  else if(locale == Locale('en', 'US')){
    print('us');
    return 2;
  }
}