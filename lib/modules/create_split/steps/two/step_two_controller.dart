import 'package:mobx/mobx.dart';

import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/shared/models/friend_model.dart';
import 'package:split_it/shared/repositories/firebase_repository.dart';

part 'step_two_controller.g.dart';

class StepTwoController = _StepTwoControllerBase with _$StepTwoController;

abstract class _StepTwoControllerBase with Store {
  final CreateSplitController controller;

  final repository = FirebaseRepository();

  _StepTwoControllerBase({
    required this.controller,
  }) {
    autorun((_) => controller.setSelectedFriends(_selectedFriends));
  }

  @observable
  List<FriendModel> _friends = [];

  @observable
  ObservableList<FriendModel> _selectedFriends = ObservableList.of([]);

  List<FriendModel> get selectedFriends => _selectedFriends;

  @observable
  String _search = "";

  @action
  void addFriend({required FriendModel friend}) {
    _selectedFriends.add(friend);
  }

  @action
  void removeFrend({required FriendModel friend}) {
    _selectedFriends.remove(friend);
  }

  @action
  void onChange(String value) {
    _search = value;
  }

  @computed
  List<FriendModel> get items {
    if (_selectedFriends.isNotEmpty) {
      final filteredList = _friends.where((element) {
        final contains = element.name
            .toString()
            .toLowerCase()
            .contains(_search.toLowerCase());
        final notAdd = !_selectedFriends.contains(element);
        return contains && notAdd;
      }).toList();
      return filteredList;
    }

    if (_search.isEmpty) {
      return _friends;
    } else {
      final filteredList = _friends
          .where((element) => element.name
              .toString()
              .toLowerCase()
              .contains(_search.toLowerCase()))
          .toList();
      return filteredList;
    }
  }

  @action
  Future<void> getFriends() async {
    final response = await this.repository.get(collection: "/friends");
    print(response);
    _friends = response.map((e) => FriendModel.fromMap(e)).toList();
  }
}
