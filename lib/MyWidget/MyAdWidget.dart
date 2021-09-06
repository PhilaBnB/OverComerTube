import 'package:flutter/cupertino.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';

class MyAdWidget extends StatelessWidget {
  static const _adUnitID = "ca-app-pub-3940256099942544/8135179316";

  final _nativeAdController = NativeAdmobController();
  @override
  Widget build(BuildContext context) {
    return NativeAdmob(
      adUnitID: _adUnitID,
      controller: _nativeAdController,
      type: NativeAdmobType.banner,
    );
  }
}