import 'package:cr_test/pages/main/main_contract.dart';
import 'package:cr_test/pages/main/main_model.dart';
import 'package:cr_test/pages/main/main_presenter.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> implements View {
  MainPresenter _mainPresenter;
  MainModel _mainModel;

  @override
  void initState() {
    _mainModel = MainModel();
    _mainPresenter = MainPresenter(this, _mainModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Text("hi"),
      ),
    );
  }

  @override
  void updateView() {
    setState(() {});
  }
}
