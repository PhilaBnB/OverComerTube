import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';
import 'package:over_comer_tube/MOL/FourStepsPage.dart';
import 'package:over_comer_tube/MOL/Key2Page.dart';
import 'package:over_comer_tube/MOL/Key3Page.dart';
import 'package:over_comer_tube/MOL/Key4Page.dart';
import 'package:over_comer_tube/MyWidget/MyAdWidget.dart';

import 'BlocEvent.dart';
import 'MOL/Key0Page.dart';
import 'MOL/Key1Page.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => MyBloc(),
        child: EasyLocalization(
          child: MyApp(),
          supportedLocales: [Locale('zh', 'TW'), Locale('en', 'US')],
          path: 'resources/langs',
        )
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   EasyLocalization.of(context).delegate,
      // ],
      // supportedLocales: EasyLocalization.of(context).supportedLocales,
      // locale: EasyLocalization.of(context).locale,
      routes: {
        '/':(context) => MyHomePage(title: '人生的奧秘'),
        '/kay0':(context) => Key0Page(),
        '/kay1':(context) => Key1Page(),
        '/kay2':(context) => Key2Page(),
        '/kay3':(context) => Key3Page(),
        '/kay4':(context) => Key4Page(),
        '/fourSteps':(context) => FourStepsPage(),
      },initialRoute: '/',
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  final titles = [tr("Preface"), tr("key1_title"), tr("key2_title"), tr("key3_title"), tr("key4_title")];
  final pages = ['/key0', '/key1', '/key2', '/key3', '/key4'];

  final icons = [Icons.vpn_key];
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent, // status bar color
          statusBarIconBrightness: Brightness.light, // status bar icon color
        ),
        child: Scaffold(
            backgroundColor: Colors.white,
            body: BlocListener<MyBloc,MyState>(
              //第一個元件listener
                listener: (context, state){

                },
                child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0, bottom: 0.0),
                          child: Text(
                              tr("The Mystery of Life"),
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700
                              )),
                          // backgroundColor: Colors.black87,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0, bottom: 10.0),
                          child: ListView.builder(
                              physics:new NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: titles.length + 1, // add 1 cell to display ad.
                              itemBuilder: (context, index) {
                                if (index == titles.length) {
                                  return Container(
                                    height: 80,
                                    margin: EdgeInsets.only(bottom: 0.0),
                                    child: Card(
                                      child:MyAdWidget()
                                    )
                                  );
                                } else {
                                  return GestureDetector(
                                    onTap:()=>{
                                      Navigator.of(context).pushNamed('/kay${index}')
                                    },
                                    child: Container(
                                      height: 80,
                                      child:Card(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          height: 80,
                                          child:ListTile(
                                            leading: Icon(icons[0]),
                                            title: Text(titles[index]),
                                          ),
                                        )
                                      ),
                                    )
                                  );
                                }
                              }
                          ),
                        ),
                      ],
                    )
                )
            )
        )
    );
  }
}
