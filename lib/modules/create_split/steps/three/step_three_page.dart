import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/steps/three/step_three_controller.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_multi_input_text.dart';
import 'package:split_it/modules/create_split/widgets/step_title_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class StepThreePage extends StatefulWidget {
  const StepThreePage({Key? key}) : super(key: key);

  @override
  _StepThreePageState createState() => _StepThreePageState();
}

class _StepThreePageState extends State<StepThreePage> {
  final StepThreeController controller = StepThreeController();
  String nome = "";
  double valor = 0.00;
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
          StepMultiInputText(
            isRemoved: false,
            count: 1,
            itemName: (value) {
              this.nome = value;
            },
            itemValue: (value) {
              this.valor = value;
            },
          ),
          TextButton.icon(
            label: Text(
              "Adicionar",
              style: AppTheme.textStyle.addButton,
            ),
            onPressed: () {
              Map<String, dynamic> value = {
                "name": this.nome,
                "price": this.valor
              };
              controller.setList(valor: value);
            },
            icon: Icon(
              Icons.add,
              color: AppTheme.colors.backgroundIconGreen,
              size: 14,
            ),
          ),
          Observer(
            builder: (_) {
              if (controller.listItems.isEmpty) {
                return Text("Nenhum item adicionado!");
              } else {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.listItems.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      child: Row(
                        children: [
                          Text(controller.listItems[index]['name']),
                          SizedBox(
                            width: 10,
                          ),
                          Text(controller.listItems[index]['price'].toString())
                        ],
                      ),
                    );
                  }),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
