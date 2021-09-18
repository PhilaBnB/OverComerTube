import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:over_comer_tube/MyWidget/MyAdWidget.dart';
import 'package:over_comer_tube/View/More/AboutAPP.dart';
import 'package:over_comer_tube/View/More/GithubProfilePage.dart';
import 'package:over_comer_tube/View/MOL/FourStepsPage.dart';
import 'package:over_comer_tube/View/MOL/Key0Page.dart';
import 'package:over_comer_tube/View/MOL/Key1Page.dart';
import 'package:over_comer_tube/View/MOL/Key2Page.dart';
import 'package:over_comer_tube/View/MOL/Key3Page.dart';
import 'package:over_comer_tube/View/MOL/Key4Page.dart';
import 'package:over_comer_tube/View/More/MorePage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'BlocEvent.dart';
import 'dart:io';

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome
      .setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) {
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
      });//Set and lock screen portrait
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
        '/':(context) => MyHomePage(),
        '/kay0':(context) => Key0Page(),
        '/kay1':(context) => Key1Page(),
        '/kay2':(context) => Key2Page(),
        '/kay3':(context) => Key3Page(),
        '/kay4':(context) => Key4Page(),
        '/fourSteps':(context) => FourStepsPage(),
        '/More':(context) => MorePage(),
        '/GithubProfile':(context) => GithubProfileBloc(),
        '/AboutAPP':(context) => AboutAppPage(),
      },initialRoute: '/',
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final icons = [Icons.vpn_key];
  final ref = FirebaseDatabase(databaseURL: 'https://overcomertube-default-rtdb.asia-southeast1.firebasedatabase.app').reference();
  int _timeStamp = 0;

  @override
  void initState() {
    getCountdown24();
  }

  @override
  Widget build(BuildContext context) {
    final titles = [tr("Preface"), tr("key1_title"), tr("key2_title"), tr("key3_title"), tr("key4_title")];
    //多語需在context作用範圍內定義，故相關變數須放置於context作用範圍內，否則會無法更換語言

    checkVersion().then((version){
      if(isOver24(_timeStamp)){
        ref.child("version").once().then((DataSnapshot data_version){
          if(version != data_version.value){
            ref.child("playstore_url").once().then((DataSnapshot data_url){
              showUpdateDialog(context, data_url.value);
              setCountdown24();
            });
          }
          else{
            print("You are in the latest version : "+version);
          }
        });
      }

    }).catchError((error){
      print(error);
    });

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
                                        elevation: 10,
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
                                          // color: Color(0xBFFF8F00),
                                          elevation: 10,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            height: 80,
                                            child:ListTile(
                                              leading: Icon(icons[0]),
                                              title: Text(titles[index],style: TextStyle(fontSize: 20),),
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
                            width: MediaQuery.of(context).size.width * .5,
                            child: GestureDetector(
                              onTap:() => Navigator.of(context).pushNamed('/More'),
                              child: Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(vertical: 16),
                                padding:
                                EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                                decoration: BoxDecoration(
                                  color: Colors.amber[800],
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 10,
                                      color: Color(0xFF666666).withOpacity(.8),
                                    ),
                                  ],
                                ),
                                child: Text(
                                  "- More -",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
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

  Future<void> getCountdown24() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _timeStamp = prefs.getInt("timeStamp") ?? 1631203200;//2021.09.10友訊離職日
      var date = DateTime.fromMillisecondsSinceEpoch(_timeStamp * 1000);
      print("上次更新時間: "+DateFormat.yMMMd().format(date));
    });
  }

  setCountdown24() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var currentTimeStamp = DateTime.now();
    print("本次更新時間:"+currentTimeStamp.toString());
    Timestamp myTimeStamp = Timestamp.fromDate(currentTimeStamp); //To TimeStamp
    prefs.setInt("timeStamp", myTimeStamp.seconds);
  }

}
//Converting timestamp
bool isOver24(int _timeStamp) {
  var now = DateTime.now();
  var date = DateTime.fromMillisecondsSinceEpoch(_timeStamp * 1000);
  var diff = now.difference(date);

  if (diff.inDays > 0) {
    if (diff.inDays < 1) {
      print("距離上次更新只過了"+diff.inHours.toString()+"小時, 總共過了"+diff.inMinutes.toString()+"分鐘");
      return false;
    } else {
      print("距離上次更新超過了一天");
      return true;
    }
  }
  else{
    print("距離上次更新只過了"+diff.inHours.toString()+"小時, 總共過了"+diff.inMinutes.toString()+"分鐘");
    return false;
  }
}
Future<String> checkVersion() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  String appName = packageInfo.appName;
  String packageName = packageInfo.packageName;
  String buildNumber = packageInfo.buildNumber;
  String version = packageInfo.version;
  return version;
}

void showUpdateDialog(BuildContext context, String url) {
  showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
            title: Text(tr("new_version_title")),
            actions: <Widget>[
              FlatButton(
                  child: Text(tr("next_time")),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              FlatButton(
                  child: Text(tr("go")),
                  onPressed: () {
                    launch(url);
                    Navigator.of(context).pop();
                  })
            ],
            content: Container(
              width: 300,
              height: 100,
              child: Text(tr("new_version_msg")),
            )
        );
      });
}
