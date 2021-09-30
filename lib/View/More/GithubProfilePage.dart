import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:over_comer_tube/Bloc/https_bloc.dart';
import 'package:over_comer_tube/Bloc/https_event.dart';
import 'package:over_comer_tube/Bloc/https_state.dart';
import 'package:over_comer_tube/Data/DataRepository.dart';
import 'package:over_comer_tube/MyWidget/LoadingWidget.dart';
import 'package:over_comer_tube/MyWidget/buildGitHubData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:over_comer_tube/main.dart';

class GithubProfileBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale _locale = MyApp.getLocale(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // supportedLocales: EasyLocalization.of(context).supportedLocales,
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('zh', ''), // Spanish, no country code
      ],
      locale: _locale,
      home: BlocProvider(
        create: (context) => HttpsBloc(DataRepository()),
        child: GithubProfilePage(),
      ),
    );
  }
}
  
class GithubProfilePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => GithubProfilePageState();
}

class GithubProfilePageState extends State<GithubProfilePage>{
  @override
  Widget build(BuildContext context) {
    final httpsBloc = context.bloc<HttpsBloc>();
    httpsBloc.add(GetAPIRespone("gitUsersApi"));
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          elevation: 0,
          title: Text(
            AppLocalizations.of(context).developer_s_Github_Profile,
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