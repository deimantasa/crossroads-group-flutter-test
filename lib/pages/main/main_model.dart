import 'package:cr_test/models/commit.dart';
import 'package:cr_test/models/loading_state.dart';

class MainModel {
	LoadingState fetchCommitsLoadingState = LoadingState.finished;
	List<Commit> commits = [];
}
