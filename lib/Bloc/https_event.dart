import 'package:flutter/material.dart';

@immutable
abstract class HttpsEvent {}

class GetAPIRespone extends HttpsEvent {
  final String apiName;
  GetAPIRespone(this.apiName);
}