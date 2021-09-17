import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:over_comer_tube/MyWidget/DiagramByLangsWidget.dart';
import 'package:over_comer_tube/MyWidget/MyAdWidget.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/LargeBoldText.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/MiddleAmberBoldText.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/MiddleScrollText.dart';
import 'package:over_comer_tube/MyWidget/TextWidget/SmallHintText.dart';

class Key1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text(tr("key1_title")),backgroundColor: Colors.black87,),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(                        // 使用 SliverAppBar
                title: Text(tr("key1_title_t1")+"\n"+tr("key1_title_t2")),
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
                                  text: tr("key1_title_human_with_gods_shape")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                text: tr("key1_verse_human_with_gods_shape"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key1_verse_human_with_gods_shape_h1"),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleScrollText(
                                  text: tr("key1_msg_human_with_gods_shape"),
                                )
                            ),


                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("key1_title_human_is_vase")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                text: tr("key1_verse_human_is_vase"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key1_verse_human_is_vase_h1"),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleScrollText(
                                  text: tr("key1_msg_human_is_vase"),
                                )
                            ),


                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("key1_title_humans_three_parts")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                text: tr("key1_verse_humans_three_parts"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("key1_verse_humans_three_parts_h1"),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleScrollText(
                                  text: tr("key1_msg_humans_three_parts_1"),
                                )
                            ),

                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: Image.asset('assets/three_part_human.png')
                            ),

                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: DiagramByLangsWidget(buildContext: context, diagram:'key1diagram1')
                            ),

                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleScrollText(
                                  text: tr("key1_msg_humans_three_parts_2"),
                                )
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("key1_title_gods_economic")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                text: tr("key1_msg_gods_economic"),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: DiagramByLangsWidget(buildContext: context, diagram:'key1diagram2')
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