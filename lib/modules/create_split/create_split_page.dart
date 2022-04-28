import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/steps/one/step_one_page.dart';
import 'package:split_it/modules/create_split/steps/three/step_three_page.dart';
import 'package:split_it/modules/create_split/steps/two/step_two_page.dart';
import 'package:split_it/modules/create_split/widgets/create_split_app_bar_widget.dart';
import 'package:split_it/modules/create_split/widgets/stepper_bottom_bar.dart';

import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final controller = CreateSplitController();

  late List<Widget> pages;

  List<String> values = ["Otniel", "", ""];

  @override
  void initState() {
    pages = [
      Container(
        child: StepOnePage(
          controller: controller,
        ),
      ),
      Container(
        child: StepTwoPage(
          controller: controller,
          onChanged: (value) {
            values[1] = value;
          },
          texto: values[1],
        ),
      ),
      Container(
        child: StepThreePage(),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      appBar: CreateSplitAppBarWidget(
        controller: controller,
        length: pages.length,
        onTap: () {
          controller.backPage(() => Navigator.pop(context));
        },
      ),
      bottomNavigationBar: StepperBottomBarWidget(
        controller: controller,
        onTap: () {
          controller.nextPage();
        },
      ),
      body: Observer(builder: (context) {
        final index = controller.currentPage;
        return pages[index];
      }),
    );
  }
}
