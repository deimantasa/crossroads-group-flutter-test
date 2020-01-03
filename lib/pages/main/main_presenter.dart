import 'package:cr_test/pages/main/main_contract.dart';
import 'package:cr_test/pages/main/main_model.dart';

class MainPresenter implements Presenter {
  View view;
  MainModel mainModel;

  MainPresenter(this.view, this.mainModel);

  @override
  Future<void> getProject() {
    // TODO: implement getProject
    throw UnimplementedError();
  }

  @override
  Future<void> refreshProject() {
    // TODO: implement refreshProject
    throw UnimplementedError();
  }
}
