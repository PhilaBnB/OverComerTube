import 'package:flutter/material.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/MiddleAmberBoldText.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/MiddleScrollText.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context).about_app,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            backgroundColor: Colors.black87,),
          body: CustomScrollView(
              slivers: [
                SliverAppBar(                        // 使用 SliverAppBar
                  title: Text(AppLocalizations.of(context).intro_1),
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
                              child: MiddleAmberBoldText(
                                  buildContext: context,
                                  text: AppLocalizations.of(context).about_app_msg1),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child: MiddleScrollText(
                                buildContext: context,
                                text: AppLocalizations.of(context).about_app_msg2),
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