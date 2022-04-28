import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import 'step_input_text_widget.dart';

class StepMultiInputText extends StatelessWidget {
  final int count;
  final ValueChanged<String> itemName;
  final ValueChanged<double> itemValue;
  final bool isRemoved;
  StepMultiInputText(
      {Key? key,
      required this.count,
      required this.itemName,
      required this.itemValue,
      required this.isRemoved})
      : super(key: key);

  final valueInputTextController = MoneyMaskedTextController(
    leftSymbol: "R\$",
    decimalSeparator: ",",
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  type: TextInputType.text,
                  disableBorder: true,
                  padding: EdgeInsets.zero,
                  onChange: (value) {
                    itemName(value);
                  },
                  hintText: "Ex.: Picanha",
                  align: TextAlign.start,
                ),
              ),
              Expanded(
                child: StepInputTextWidget(
                  controller: valueInputTextController,
                  disableBorder: true,
                  padding: EdgeInsets.zero,
                  onChange: (value) {
                    itemValue(valueInputTextController.numberValue);
                  },
                  hintText: "R\$ 0,00",
                  align: TextAlign.start,
                  type: TextInputType.number,
                ),
              ),
              if (isRemoved)
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete_outline),
                )
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
