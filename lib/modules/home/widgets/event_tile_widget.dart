import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/shared/loading_widget.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/theme/app_theme.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel eventModel;
  final bool isLoading;

  const EventTileWidget({
    Key? key,
    required this.eventModel,
    this.isLoading = false,
  }) : super(key: key);

  IconDollarType get type =>
      eventModel.value! >= 0 ? IconDollarType.receive : IconDollarType.send;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: LoadingWidget(size: Size(48, 48)),
                  title: LoadingWidget(size: Size(81, 19)),
                  subtitle: LoadingWidget(size: Size(52, 18)),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoadingWidget(size: Size(61, 17)),
                      SizedBox(
                        height: 5,
                      ),
                      LoadingWidget(size: Size(44, 18)),
                    ],
                  ),
                ),
                Divider(
                  color: AppTheme.colors.divider,
                  indent: 65,
                )
              ],
            ),
          ),
        ],
      );
    }
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: IconDollarWidget(type: type),
                title: Text(
                  this.eventModel.title!,
                  style: AppTheme.textStyle.eventTileTitle,
                ),
                subtitle: Text(
                  this.eventModel.created.toString(),
                  style: AppTheme.textStyle.eventTileSubtitle,
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "R\$ ${this.eventModel.value}",
                      style: AppTheme.textStyle.eventTileMoney,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${eventModel.people} ${eventModel.people == 1 ? 'pessoa' : 'pessoas'}",
                      style: AppTheme.textStyle.eventTilePeople,
                    ),
                  ],
                ),
              ),
              Divider(
                color: AppTheme.colors.divider,
                indent: 65,
              )
            ],
          ),
        ),
      ],
    );
  }
}
