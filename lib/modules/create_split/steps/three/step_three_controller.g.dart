// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_three_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StepThreeController on _StepThreeControllerBase, Store {
  final _$listItemsAtom = Atom(name: '_StepThreeControllerBase.listItems');

  @override
  ObservableList<Map<String, dynamic>> get listItems {
    _$listItemsAtom.reportRead();
    return super.listItems;
  }

  @override
  set listItems(ObservableList<Map<String, dynamic>> value) {
    _$listItemsAtom.reportWrite(value, super.listItems, () {
      super.listItems = value;
    });
  }

  final _$_StepThreeControllerBaseActionController =
      ActionController(name: '_StepThreeControllerBase');

  @override
  void setList({required Map<String, dynamic> valor}) {
    final _$actionInfo = _$_StepThreeControllerBaseActionController.startAction(
        name: '_StepThreeControllerBase.setList');
    try {
      return super.setList(valor: valor);
    } finally {
      _$_StepThreeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItems: ${listItems}
    ''';
  }
}
