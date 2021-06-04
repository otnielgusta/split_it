import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_title_widget.dart';

class StepThreePage extends StatefulWidget {
  const StepThreePage({Key? key}) : super(key: key);

  @override
  _StepThreePageState createState() => _StepThreePageState();
}

class _StepThreePageState extends State<StepThreePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 39),
      child: Column(
        children: [
          StepTitleWidget(
              title: "Qual ou quais", subtitle: "\ítens você quer dividir?"),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Text("1"),
                    ),
                    Expanded(
                      flex: 3,
                      child: StepInputTextWidget(
                        disableBorder: true,
                        padding: EdgeInsets.zero,
                        onChange: (value) {},
                        hintText: "Ex.: Picanha",
                        align: TextAlign.start,
                      ),
                    ),
                    Expanded(
                      child: StepInputTextWidget(
                        disableBorder: true,
                        padding: EdgeInsets.zero,
                        onChange: (value) {},
                        hintText: "R\$ 0,00",
                        align: TextAlign.start,
                        type: TextInputType.number,
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.delete_outline))
                  ],
                ),
                Divider()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
