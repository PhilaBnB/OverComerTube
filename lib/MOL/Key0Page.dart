import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:over_comer_tube/MyWidget/LargeBoldText.dart';
import 'package:over_comer_tube/MyWidget/MiddleAmberBoldText.dart';
import 'package:over_comer_tube/MyWidget/MiddleText.dart';
import 'package:over_comer_tube/MyWidget/SmallHintText.dart';

class Key0Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text(tr("Preface")),backgroundColor: Colors.black87,),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(                        // 使用 SliverAppBar
                title: Text(tr("to_know")+"\n"+tr("to_know_h1")),
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
                                  text: tr("title_the_reason_people_live")
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleText(
                                text: tr("msg_the_reason_people_live"),
                              )
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                text: tr("msg_the_reason_people_live_q1"),
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("title_gods_plan")
                              ),
                            ),

                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleText(
                                  text: tr("msg_gods_plan"),
                                )
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: SmallHintText(
                                text: tr("msg_gods_plan_h2"),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              child: MiddleAmberBoldText(
                                text: tr("msg_gods_plan_q2"),
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * .9,
                              child:LargeBoldText(
                                  text: tr("title_four_keys")
                              ),
                            ),

                            SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: MiddleText(
                                  text: tr("msg_four_keys"),
                                )
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