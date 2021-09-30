import 'package:flutter/material.dart';
import 'package:over_comer_tube/MyWidget/MyAdWidget.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/LargeBoldText.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/MiddleAmberBoldText.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/MiddleScrollText.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/SmallHintText.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Key0Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context).preface),
            backgroundColor: Colors.black87,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context).pushNamed('/kay1'),
              ),
            ],
          ),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(// 使用 SliverAppBar
                toolbarHeight: 100.0,
                title: Text(AppLocalizations.of(context).to_know+"\n"+AppLocalizations.of(context).to_know_h1),
                backgroundColor: Colors.black87,
                expandedHeight: 100.0,
              ),
              SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: AppLocalizations.of(context).title_the_reason_people_live
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleScrollText(
                                buildContext: context,
                                text: AppLocalizations.of(context).msg_the_reason_people_live_1,
                              )
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleScrollText(
                                buildContext: context,
                                text: AppLocalizations.of(context).msg_the_reason_people_live_2,
                              )
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                buildContext: context,
                                text: AppLocalizations.of(context).msg_the_reason_people_live_q1,
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: AppLocalizations.of(context).title_gods_plan
                              ),
                            ),

                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleScrollText(
                                  buildContext: context,
                                  text: AppLocalizations.of(context).msg_gods_plan,
                                )
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: AppLocalizations.of(context).msg_gods_plan_h2,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                buildContext: context,
                                text: AppLocalizations.of(context).msg_gods_plan_q2,
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: AppLocalizations.of(context).title_four_keys
                              ),
                            ),

                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleScrollText(
                                  buildContext: context,
                                  text: AppLocalizations.of(context).msg_four_keys_1,
                                )
                            ),

                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleScrollText(
                                  buildContext: context,
                                  text: AppLocalizations.of(context).msg_four_keys_2,
                                )
                            ),

                          ],
                        ),
                      )
                    ],
                  )
              )
            ],
          ),
          bottomNavigationBar:Container(
            height: 80,
            child: Card(
                child: MyAdWidget()
            ),
          )
      ),
    );
  }
}