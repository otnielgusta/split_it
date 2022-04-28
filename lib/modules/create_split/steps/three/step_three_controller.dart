import 'package:mobx/mobx.dart';
part 'step_three_controller.g.dart';

class StepThreeController = _StepThreeControllerBase with _$StepThreeController;

abstract class _StepThreeControllerBase with Store {
  @observable
  ObservableList<Map<String, dynamic>> listItems = ObservableList.of([]);

  @action
  void setList({required Map<String, dynamic> valor}) {
    listItems.add(valor);
  }
}
