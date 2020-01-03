abstract class Presenter {
  Future<void> getProject();
  Future<void> refreshProject();
}

abstract class View {
  void updateView();
}
