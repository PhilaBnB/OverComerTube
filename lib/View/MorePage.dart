
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:over_comer_tube/BlocEvent.dart';
import 'package:over_comer_tube/MyWidget/MyAdWidget.dart';

class MorePage extends StatelessWidget {
  final titles = [tr("About Developer")];
  // final pages = ['/About'];

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
                                      child:MyAdWidget()
                                  )
                              );
                            } else {
                              return GestureDetector(
                                  onTap:()=>{
                                    if(index == 0)
                                      Navigator.of(context).pushNamed('/GithubProfile')
                                  },
                                  child: Container(
                                    height: 80,
                                    child:Card(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          height: 80,
                                          child:ListTile(
                                            title: Text(titles[index]),
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