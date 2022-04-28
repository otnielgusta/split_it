import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/steps/two/step_two_controller.dart';
import 'package:split_it/modules/create_split/widgets/person_tile_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_title_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class StepTwoPage extends StatefulWidget {
  final CreateSplitController controller;

  final String texto;
  final void Function(String value) onChanged;
  const StepTwoPage(
      {Key? key,
      required this.onChanged,
      required this.texto,
      required this.controller})
      : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  late StepTwoController controller;

  @override
  void initState() {
    controller = StepTwoController(controller: widget.controller);
    controller.getFriends();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 39),
      child: Column(
        children: [
          StepTitleWidget(title: "Com quem", subtitle: "você quer dividir?"),
          SizedBox(
            height: 40,
          ),
          StepInputTextWidget(
            type: TextInputType.text,
            onChange: (value) {
              print(value);
              controller.onChange(value);
            },
            hintText: "Nome da pessoa",
          ),
          SizedBox(
            height: 35,
          ),
          Observer(builder: (_) {
            if (controller.selectedFriends.isEmpty) {
              return Text("Nenhum amigo selecionado",
                  style: AppTheme.textStyle.info);
            } else {
              return Column(
                children: controller.selectedFriends
                    .map((e) => PersonTile(
                          friend: e,
                          isRemoved: true,
                          onPressed: () {
                            controller.removeFrend(friend: e);
                          },
                        ))
                    .toList(),
              );
            }
          }),
          SizedBox(
            height: 30,
          ),
          Observer(builder: (_) {
            if (controller.items.isEmpty) {
              return Text("Nenhum amigo encontrado",
                  style: AppTheme.textStyle.info);
            } else {
              return Column(
                children: controller.items
                    .map((e) => PersonTile(
                          friend: e,
                          onPressed: () {
                            controller.addFriend(friend: e);
                          },
                        ))
                    .toList(),
              );
            }
          })
        ],
      ),
    );
  }
}
