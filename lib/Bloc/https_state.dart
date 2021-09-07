import 'package:flutter/material.dart';
import 'package:http/http.dart';

@immutable
abstract class HttpsState {
  const HttpsState();
}

class HttpsInitial extends HttpsState {
  const HttpsInitial();
}

class HttpsLoading extends HttpsState {
  const HttpsLoading();
}

class HttpsLoaded extends HttpsState {
  final Response response;
  const HttpsLoaded(this.response);
}

class HttpsError extends HttpsState {
  final String error;
  const HttpsError(this.error);
}