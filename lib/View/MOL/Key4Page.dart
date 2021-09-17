import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:over_comer_tube/MyWidget/DiagramByLangsWidget.dart';
import 'package:over_comer_tube/MyWidget/MyAdWidget.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/LargeBoldText.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/MiddleAmberBoldText.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/MiddleText.dart';
import 'package:over_comer_tube/MyWidget/RoundedButton.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/SmallHintText.dart';

class Key4Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text(tr("key4_title")),backgroundColor: Colors.black87,),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(                        // 使用 SliverAppBar
                title: Text(tr("key4_title_t1")+"\n"+tr("key4_title_t2")),
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
                                  text: tr("key4_title_twice_become")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleText(
                                text: tr("key4_msg_twice_become1"),
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                text: tr("key4_verse_twice_become1"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key4_verse_twice_become1_h1"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleText(
                                text: tr("key4_msg_twice_become2"),
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                text: tr("key4_verse_twice_become2"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key4_verse_twice_become2_h1"),
                              ),
                            ),


                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleText(
                                  text: tr("key4_msg_twice_become3"),
                                )
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .9,
                                child: DiagramByLangsWidget(buildContext: context, diagram:'key4diagram0')
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleText(
                                  text: tr("key4_msg_twice_become4"),
                                )
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                text: tr("key4_verse_twice_become3"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key4_verse_twice_become3_h1"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("key4_title_rebron")
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleText(
                                  text: tr("key4_msg_rebron1")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleAmberBoldText(
                                  text: tr("key4_verse_rebron1")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key4_verse_rebron1_h1"),
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleAmberBoldText(
                                  text: tr("key4_verse_rebron2")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key4_verse_rebron2_h1"),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleText(
                                  text: tr("key4_msg_rebron2"),
                                )
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: DiagramByLangsWidget(buildContext: context, diagram:'key4diagram1')
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("key4_title_meaning_of_christian")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleText(
                                  text: tr("key4_msg_meaning_of_christian1")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleAmberBoldText(
                                  text: tr("key4_verse_meaning_of_christian1")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key4_verse_meaning_of_christian1_h1"),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: DiagramByLangsWidget(buildContext: context, diagram:'key4diagram2')
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleText(
                                  text: tr("key4_msg_meaning_of_christian2")
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleAmberBoldText(
                                  text: tr("key4_verse_meaning_of_christian2")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key4_verse_meaning_of_christian2_h1"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:MiddleText(
                                  text: tr("key4_msg_meaning_of_christian3")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child:RoundedButton(
                                  fontSize: 24,
                                  press: (){
                                    Navigator.of(context).pushNamed('/fourSteps');
                                  },
                                  text: tr("key4_msg_what_must_you_do_now1")
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