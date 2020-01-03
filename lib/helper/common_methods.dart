import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonMethods {
  static void showSnackBarMessage(GlobalKey<ScaffoldState> scaffoldKey, String message) {
    scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
