import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:over_comer_tube/Bloc/https_event.dart';
import 'package:over_comer_tube/Bloc/https_state.dart';
import 'package:over_comer_tube/Data/DataRepository.dart';

class HttpsBloc extends Bloc<HttpsEvent, HttpsState>{
  final DataRepository _response;
  HttpsBloc(this._response): super(HttpsInitial());
  @override
  Stream<HttpsState> mapEventToState(HttpsEvent event) async*{
    try {

      if (event is GetAPIRespone) {
        yield (HttpsLoading());
        final response = await _response.fetchGitAPI(event.apiName);
        yield (HttpsLoaded(response));
      }
    } on DataNotFoundException {
      yield (HttpsError('API data was Not Found!'));
    }
  }

}