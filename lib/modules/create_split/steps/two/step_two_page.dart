import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/person_tile_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_title_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class StepTwoPage extends StatefulWidget {
  final String texto;
  final void Function(String value) onChanged;
  const StepTwoPage({Key? key, required this.onChanged, required this.texto})
      : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  List<UserModel> users = [
    UserModel(
        id: "id",
        email: "email",
        name: "Otniel",
        photoUrl:
            "https://media-exp1.licdn.com/dms/image/C4D03AQHCaMvLmDFYYA/profile-displayphoto-shrink_200_200/0/1607560318568?e=1628121600&v=beta&t=gbOM4-abMh5u60Oh7yHokDCyj6oBsxIlEsSr8VoHahE"),
    UserModel(
      id: "id",
      email: "email",
      name: "Otniel",
    ),
    UserModel(
        id: "id",
        email: "email",
        name: "Otniel",
        photoUrl:
            "https://media-exp1.licdn.com/dms/image/C4D03AQHCaMvLmDFYYA/profile-displayphoto-shrink_200_200/0/1607560318568?e=1628121600&v=beta&t=gbOM4-abMh5u60Oh7yHokDCyj6oBsxIlEsSr8VoHahE"),
  ];
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
              texto: widget.texto,
              onChange: widget.onChanged,
              hintText: "Nome da pessoa"),
          SizedBox(
            height: 35,
          ),
          Column(
            children: [...users.map((e) => PersonTile(user: e))],
          )
        ],
      ),
    );
  }
}
