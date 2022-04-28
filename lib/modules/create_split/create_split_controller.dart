import 'package:mobx/mobx.dart';
import 'package:split_it/shared/models/friend_model.dart';

part 'create_split_controller.g.dart';

class CreateSplitController = _CreateSplitControllerBase
    with _$CreateSplitController;

abstract class _CreateSplitControllerBase with Store {
  @observable
  String eventName = "";

  @observable
  int currentPage = 0;

  @observable
  List<FriendModel> selectedFriends = [];

  @computed
  bool get enableNavigateButton {
    if (eventName.isNotEmpty && currentPage == 0) {
      return true;
    } else if (selectedFriends.isNotEmpty && currentPage == 1) {
      return true;
    } else {
      return false;
    }
  }

  @action
  void setSelectedFriends(List<FriendModel> list) {
    selectedFriends = list;
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
