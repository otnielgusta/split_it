import 'package:mobx/mobx.dart';

part 'create_split_controller.g.dart';

class CreateSplitController = _CreateSplitControllerBase
    with _$CreateSplitController;

abstract class _CreateSplitControllerBase with Store {
  @observable
  String eventName = "";

  @observable
  int currentPage = 0;

  @computed
  bool get enableNavigateButton {
    return eventName.isNotEmpty;
  }

  @action
  void setEventName(String name) {
    this.eventName = name;
  }

  @action
  void nextPage() {
    if (currentPage < 2) {
      currentPage++;
    }
  }

  @action
  void backPage(Function() navigator) {
    if (currentPage > 0) {
      currentPage--;
    } else if (currentPage == 0) {
      navigator();
    }
  }
}
