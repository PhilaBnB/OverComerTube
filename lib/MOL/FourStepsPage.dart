import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:over_comer_tube/MyWidget/LargeBoldText.dart';
import 'package:over_comer_tube/MyWidget/MiddleAmberBoldText.dart';
import 'package:over_comer_tube/MyWidget/MiddleText.dart';
import 'package:over_comer_tube/MyWidget/SmallHintText.dart';

class FourStepsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text(tr("key4_msg_what_must_you_do_now1")),backgroundColor: Colors.black87,),
          body: CustomScrollView(
            slivers: [
              // SliverAppBar(                        // 使用 SliverAppBar
              //   title: Text(tr("key4_title_t1")+"\n"+tr("key4_title_t2")),
              //   backgroundColor: Colors.black87,
              //   expandedHeight: 100.0,
              // ),
              SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleText(
                                text: tr("key4_msg_what_must_you_do_now2"),
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("key4_title_turn_heart")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleText(
                                text: tr("key4_msg_turn_heart"),
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                text: tr("key4_verse_turn_heart"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key4_verse_turn_heart_h1"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("key4_title_believe")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleText(
                                text: tr("key4_msg_believe"),
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                text: tr("key4_verse_believe"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key4_verse_believe_h1"),
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("key4_title_confess")
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleText(
                                  text: tr("key4_msg_confess"),
                                )
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                text: tr("key4_verse_confess"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key4_verse_confess_h1"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("key4_title_baptized")
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleText(
                                  text: tr("key4_msg_baptized1")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleAmberBoldText(
                                  text: tr("key4_verse_baptized1")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key4_verse_baptized1_h1"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleText(
                                  text: tr("key4_msg_baptized2")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleAmberBoldText(
                                  text: tr("key4_verse_baptized2")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key4_verse_baptized2_h1"),
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("key4_title_pray")
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleAmberBoldText(
                                  text: tr("key4_msg_pray1")
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleText(
                                  text: tr("key4_msg_pray2")
                              ),
                            ),


                          ],
                        ),
                      )
                    ],
                  )
              )
            ],
          )
      ),
    );
  }
}