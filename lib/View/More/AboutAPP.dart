import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/MiddleText.dart';

class AboutAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(tr("About App"),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            backgroundColor: Colors.black87,),
          body: CustomScrollView(
              slivers: [
                SliverAppBar(                        // 使用 SliverAppBar
                  title: Text(tr("intro_1")),
                  backgroundColor: Colors.black87,
                  expandedHeight: 60.0,
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:MiddleText(
                              text: tr("hope and plan")),
                            ),
                          ]
                        )
                      )
                  ]
                  )
                )
              ]
          )
      )
    );
  }
}