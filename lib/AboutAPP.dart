import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:over_comer_tube/Bloc/https_bloc.dart';
import 'package:over_comer_tube/Data/DataRepository.dart';
import 'package:over_comer_tube/View/AboutPage.dart';

class AboutAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => HttpsBloc(DataRepository()),
        child: AboutPage(),
      ),
    );
  }
}