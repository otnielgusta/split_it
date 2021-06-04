import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/steps/one/step_one_page.dart';
import 'package:split_it/modules/create_split/steps/three/step_three_page.dart';
import 'package:split_it/modules/create_split/steps/two/step_two_page.dart';
import 'package:split_it/modules/create_split/widgets/create_split_app_bar_widget.dart';
import 'package:split_it/modules/create_split/widgets/stepper_bottom_bar.dart';
import 'package:split_it/modules/create_split/widgets/stepper_next_button_widget.dart';
import 'package:split_it/theme/app_colors.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final controller = CreateSplitController();

  late List<Widget> pages;

  @override
  void initState() {
    pages = [
      Container(
        child: StepOnePage(
          onChange: (value) {
            controller.setEventName(value);
            setState(() {});
          },
        ),
      ),
      Container(
        child: StepTwoPage(
          onChanged: (value) {},
        ),
      ),
      Container(
        child: StepThreePage(),
      ),
    ];
    super.initState();
  }

  var index = 0;

  void nextPage() {
    if (index < 2) {
      index++;
      setState(() {});
    }
  }

  void backPage() {
    if (index > 0) {
      index--;
    } else if (index == 0) {
      Navigator.pop(context);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      appBar: CreateSplitAppBarWidget(
        index: index,
        length: pages.length,
        onTap: () {
          setState(() {
            backPage();
          });
        },
      ),
      bottomNavigationBar: StepperBottomBarWidget(
        enabledButtons: controller.enableNavigateButton(),
        onTap: () {
          nextPage();
        },
      ),
      body: pages[index],
    );
  }
}
