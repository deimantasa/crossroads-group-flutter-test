import 'package:cr_test/helper/common_methods.dart';
import 'package:cr_test/models/commit.dart';
import 'package:cr_test/models/loading_state.dart';
import 'package:cr_test/pages/main/main_contract.dart';
import 'package:cr_test/pages/main/main_model.dart';
import 'package:cr_test/pages/main/main_presenter.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> implements View {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  MainPresenter _mainPresenter;
  MainModel _mainModel;

  @override
  void initState() {
    _mainModel = MainModel();
    _mainPresenter = MainPresenter(this, _mainModel);
    _mainPresenter.getProject();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.refresh), onPressed: () => _mainPresenter.refreshProject()),
      body: _getRightWidget(),
    );
  }

  @override
  void updateView() {
    setState(() {});
  }

  @override
  void showMessage(String message) {
    CommonMethods.showSnackBarMessage(_scaffoldKey, message);
  }

  Widget _getRightWidget() {
    if (_mainModel.fetchCommitsLoadingState == LoadingState.loading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      //Just a quick check if repo has commits
      if (_mainModel.commits.isEmpty) {
        return Center(
          child: Text("Repo has no commits"),
        );
      } else {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: _mainModel.commits.length,
            itemBuilder: (context, commitIndex) {
              Commit commit = _mainModel.commits[commitIndex];
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(commit.message),
                    subtitle: Text(commit.author.name),
                  ),
                  Divider(
                    height: 1,
                  )
                ],
              );
            });
      }
    }
  }
}
