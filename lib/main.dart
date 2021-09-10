import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:over_comer_tube/MyWidget/MyAdWidget.dart';
import 'package:over_comer_tube/View/GithubProfilePage.dart';
import 'package:over_comer_tube/View/MOL/FourStepsPage.dart';
import 'package:over_comer_tube/View/MOL/Key0Page.dart';
import 'package:over_comer_tube/View/MOL/Key1Page.dart';
import 'package:over_comer_tube/View/MOL/Key2Page.dart';
import 'package:over_comer_tube/View/MOL/Key3Page.dart';
import 'package:over_comer_tube/View/MOL/Key4Page.dart';
import 'package:over_comer_tube/View/MorePage.dart';
import 'BlocEvent.dart';
import 'dart:io';

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

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
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: EasyLocalization.of(context).supportedLocales,
      locale: context.locale,
      routes: {
        '/':(context) => MyHomePage(title: '人生的奧秘'),
        '/kay0':(context) => Key0Page(),
        '/kay1':(context) => Key1Page(),
        '/kay2':(context) => Key2Page(),
        '/kay3':(context) => Key3Page(),
        '/kay4':(context) => Key4Page(),
        '/fourSteps':(context) => FourStepsPage(),
        '/More':(context) => MorePage(),
        '/GithubProfile':(context) => GithubProfileBloc(),
      },initialRoute: '/',
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final icons = [Icons.vpn_key];

  @override
  Widget build(BuildContext context) {
    final titles = [tr("Preface"), tr("key1_title"), tr("key2_title"), tr("key3_title"), tr("key4_title")];
    //多語需在context作用範圍內定義，故相關變數須放置於context作用範圍內，否則會無法更換語言
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
                        Container(
                            color: Color.fromRGBO(25, 27, 47, 1.0),
                            child: ListTile(
                              title: Text("- More -", style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold)),
                              onTap: () => Navigator.of(context).pushNamed('/More'),
                            )
                        ),
                      ],
                    )
                )
            )
        )
    );
  }
  Future<void> apiTest() async {
    var url = 'https://api.github.com/users/PhilaBnB';

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(
        Uri.parse('https://api.github.com/users/PhilaBnB'),
        headers: { HttpHeaders.authorizationHeader: 'application/vnd.github.v3+json'});
    if (response.statusCode == 200) {
      var jsonResponse =
      convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['location'];
      print('bio: $itemCount');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

}
