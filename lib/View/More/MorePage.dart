
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:over_comer_tube/BlocEvent.dart';
import 'package:over_comer_tube/MyWidget/MyAdWidget.dart';
import 'package:over_comer_tube/MyWidget/SingleSelector.dart';
  List<String> Langs = [
    "中文",
    "English",
  ];

class MorePage extends StatelessWidget {
  final titles = [tr("About Developer"),tr("Language"),tr("About APP")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: BlocListener<MyBloc,MyState>(
        //第一個元件listener
        listener: (context, state){},
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Scaffold(
                backgroundColor: Colors.transparent,
                body: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0, bottom: 0.0),
                      child: Text(
                          tr("More"),
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
                                  onTap:() => { tapListHandler(context, index) },
                                  child: Container(
                                    height: 80,
                                    child:Card(
                                        elevation: 10,
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          height: 80,
                                          child:ListTile(
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
                  ],
                )
            ),
        ),
        )
    );
  }
}

tapListHandler(BuildContext context, int index) {
  switch(index){
    case 0://github profile
      Navigator.of(context).pushNamed('/GithubProfile');
      break;
    case 1://更換語言
      showLangDialog(context);
      break;
    case 2://about app
      Navigator.of(context).pushNamed('/AboutAPP');
      break;
  }
}

enum LanguageOption { ZH_TW, EN_US }

showLangDialog(BuildContext context){
  var selectLang = 0;
  showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: Text(tr("Choose a language")),
          actions: <Widget>[
            FlatButton(
              child: Text(tr("Cancel")),
              onPressed: () {
                Navigator.of(context).pop();
              }),
            FlatButton(
                child: Text(tr("Ok")),
                onPressed: () {
                  setLanguageByIndex(context, selectLang);
                  Navigator.of(context).pop();
                })
          ],
          content: Container(
              width: 300,
              height: 400,
              child: SingleSelector(Langs, (index){selectLang = index;}),
          )
        );
      });
}

void setLanguageByIndex(BuildContext context, int selectLang) {
  switch (selectLang){
    case 0:
      context.setLocale(Locale('zh', 'TW'));
      break;
    case 1:
      context.setLocale(Locale('en', 'US'));
      break;
  }
}