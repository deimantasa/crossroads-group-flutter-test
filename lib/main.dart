import 'package:cr_test/pages/main/main_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'env.dart';

void main() {
  Env.set(kReleaseMode ? Env.prod : Env.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CR Flutter Test',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainPage());
  }
}
