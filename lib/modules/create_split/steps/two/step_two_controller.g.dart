// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_two_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StepTwoController on _StepTwoControllerBase, Store {
  Computed<List<FriendModel>>? _$itemsComputed;

  @override
  List<FriendModel> get items =>
      (_$itemsComputed ??= Computed<List<FriendModel>>(() => super.items,
              name: '_StepTwoControllerBase.items'))
          .value;

  final _$_friendsAtom = Atom(name: '_StepTwoControllerBase._friends');

  @override
  List<FriendModel> get _friends {
    _$_friendsAtom.reportRead();
    return super._friends;
  }

  @override
  set _friends(List<FriendModel> value) {
    _$_friendsAtom.reportWrite(value, super._friends, () {
      super._friends = value;
    });
  }

  final _$_selectedFriendsAtom =
      Atom(name: '_StepTwoControllerBase._selectedFriends');

  @override
  ObservableList<FriendModel> get _selectedFriends {
    _$_selectedFriendsAtom.reportRead();
    return super._selectedFriends;
  }

  @override
  set _selectedFriends(ObservableList<FriendModel> value) {
    _$_selectedFriendsAtom.reportWrite(value, super._selectedFriends, () {
      super._selectedFriends = value;
    });
  }

  final _$_searchAtom = Atom(name: '_StepTwoControllerBase._search');

  @override
  String get _search {
    _$_searchAtom.reportRead();
    return super._search;
  }

  @override
  set _search(String value) {
    _$_searchAtom.reportWrite(value, super._search, () {
      super._search = value;
    });
  }

  final _$getFriendsAsyncAction =
      AsyncAction('_StepTwoControllerBase.getFriends');

  @override
  Future<void> getFriends() {
    return _$getFriendsAsyncAction.run(() => super.getFriends());
  }

  final _$_StepTwoControllerBaseActionController =
      ActionController(name: '_StepTwoControllerBase');

  @override
  void addFriend({required FriendModel friend}) {
    final _$actionInfo = _$_StepTwoControllerBaseActionController.startAction(
        name: '_StepTwoControllerBase.addFriend');
    try {
      return super.addFriend(friend: friend);
    } finally {
      _$_StepTwoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFrend({required FriendModel friend}) {
    final _$actionInfo = _$_StepTwoControllerBaseActionController.startAction(
        name: '_StepTwoControllerBase.removeFrend');
    try {
      return super.removeFrend(friend: friend);
    } finally {
      _$_StepTwoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChange(String value) {
    final _$actionInfo = _$_StepTwoControllerBaseActionController.startAction(
        name: '_StepTwoControllerBase.onChange');
    try {
      return super.onChange(value);
    } finally {
      _$_StepTwoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
items: ${items}
    ''';
  }
}
