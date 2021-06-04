import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_title_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class StepOnePage extends StatefulWidget {
  final void Function(String value) onChange;
  const StepOnePage({Key? key, required this.onChange}) : super(key: key);

  @override
  _StepOnePageState createState() => _StepOnePageState();
}

class _StepOnePageState extends State<StepOnePage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 39),
      child: Column(
        children: [
          StepTitleWidget(title: "Qual o nome", subtitle: "do evento?"),
          SizedBox(
            height: 40,
          ),
          StepInputTextWidget(
              onChange: widget.onChange, hintText: "Ex.: Churrasco"),
        ],
      ),
    );
  }
}
