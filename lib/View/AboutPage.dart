import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:over_comer_tube/Bloc/https_bloc.dart';
import 'package:over_comer_tube/Bloc/https_event.dart';
import 'package:over_comer_tube/Bloc/https_state.dart';
import 'package:over_comer_tube/MyWidget/LoadingWidget.dart';
import 'package:over_comer_tube/MyWidget/buildGitHubData.dart';

class AboutPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => AboutPageState();
}

class AboutPageState extends State<AboutPage>{
  @override
  Widget build(BuildContext context) {
    final httpsBloc = context.bloc<HttpsBloc>();
    httpsBloc.add(GetAPIRespone("gitUsersApi"));
    return Scaffold(
        backgroundColor: Color(0xff2BE1C8),
        appBar: AppBar(
          backgroundColor: Color(0xFF188991),
          centerTitle: true,
          elevation: 0,
          title: Text(
            "GITHUB PROFILE",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 650,
              child: BlocConsumer<HttpsBloc, HttpsState>(
                builder: (context, state) {
                  if (state is HttpsInitial)
                    return buildLoadingState();
                  else if (state is HttpsLoading)
                    return buildLoadingState();
                  else if (state is HttpsLoaded)
                    return buildGitHubData(state.response);
                  else
                    return buildLoadingState();
                },
                listener: (context, state) {
                  if (state is HttpsError) {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.error),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      );
  }
}