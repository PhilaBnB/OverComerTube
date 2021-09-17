import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:over_comer_tube/MyWidget/DiagramByLangsWidget.dart';
import 'package:over_comer_tube/MyWidget/MyAdWidget.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/LargeBoldText.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/MiddleAmberBoldText.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/MiddleScrollText.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/SmallHintText.dart';

class Key2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(tr("key2_title")),
            backgroundColor: Colors.black87,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context).pushNamed('/kay3'),
              ),
            ],),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(                        // 使用 SliverAppBar
                title: Text(tr("key2_title_t1")+"\n"+tr("key2_title_t2")),
                backgroundColor: Colors.black87,
                expandedHeight: 100.0,
                toolbarHeight: 100.0,
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
                                  text: tr("key2_title_human_two_att")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleScrollText(
                                buildContext: context,
                                text: tr("key2_msg_human_two_att"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child: LargeBoldText(
                                text: tr("key2_title_sin"),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleScrollText(
                                  buildContext: context,
                                  text: tr("key2_msg_sin"),
                                )
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                buildContext: context,
                                text: tr("key2_verse_sin1"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key2_verse_sin1_h1"),
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                buildContext: context,
                                text: tr("key2_verse_sin2"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key2_verse_sin2_h1"),
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("key2_title_human_fall")
                              ),
                            ),

                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleScrollText(
                                  buildContext: context,
                                  text: tr("key2_msg_human_fall"),
                                )
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: DiagramByLangsWidget(buildContext: context, diagram:'key2diagram')
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleScrollText(
                                  buildContext: context,
                                  text: tr("key2_msg_sin_caused_spirit_dead"),
                                )
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleAmberBoldText(
                                  buildContext: context,
                                  text: tr("key2_verse_sin_caused_spirit_dead")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key2_verse_sin_caused_spirit_dead_h1"),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleScrollText(
                                  buildContext: context,
                                  text: tr("key2_msg_sin_caused_mine_to_rebel"),
                                )
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleAmberBoldText(
                                  buildContext: context,
                                  text: tr("key2_verse_sin_caused_mine_to_rebel")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key2_verse_sin_caused_mine_to_rebel_h1"),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleScrollText(
                                  buildContext: context,
                                  text: tr("key2_msg_sin_caused_body_to_sin1"),
                                )
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleAmberBoldText(
                                  buildContext: context,
                                  text: tr("key2_verse_sin_caused_body_to_sin")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key2_verse_sin_caused_body_to_sin_h1"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleScrollText(
                                  buildContext: context,
                                  text: tr("key2_msg_sin_caused_body_to_sin2")
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("key2_title_cannot_save_himself")
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleScrollText(
                                  buildContext: context,
                                  text: tr("key2_msg_cannot_save_himself")
                              ),
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