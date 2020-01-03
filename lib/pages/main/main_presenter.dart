import 'dart:convert';

import 'package:cr_test/env.dart';
import 'package:cr_test/models/commit.dart';
import 'package:cr_test/models/commit_item.dart';
import 'package:cr_test/models/loading_state.dart';
import 'package:cr_test/network/api.dart';
import 'package:cr_test/pages/main/main_contract.dart';
import 'package:cr_test/pages/main/main_model.dart';
import 'package:http/http.dart' as http;

class MainPresenter implements Presenter {
  View view;
  MainModel mainModel;

  MainPresenter(this.view, this.mainModel);

  @override
  Future<void> getProject() async {
    //Showing loading
    mainModel.fetchCommitsLoadingState = LoadingState.loading;
    view.updateView();

    final response = await http.get(Env.data.apiBaseUrl + Api.getCommits());
    if (response.statusCode == 200) {
      //Clearing to avoid duplications
      mainModel.commits.clear();
      //I like doing it longer wait due to easier debugging
      var commitItemsJson = json.decode(response.body);
      for (var commitItemJson in commitItemsJson) {
        CommitItem commitItem = CommitItem.fromJson(commitItemJson);
        mainModel.commits.add(commitItem.commit);
      }
    } else {
      view.showMessage("Something went wrong");
    }

    //Not showing loading
    mainModel.fetchCommitsLoadingState = LoadingState.finished;
    view.updateView();
  }

  @override
  Future<void> refreshProject() async {
    //Well,.. let's treat them the same
    getProject();
  }
}
