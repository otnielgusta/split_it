import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/shared/models/event_model.dart';

abstract class AppBarState {}

class AppBarStateEmpty extends AppBarState {}

class AppBarStateSuccess extends AppBarState {
  DashboardModel dashboardModel;
  AppBarStateSuccess({required this.dashboardModel});
}

class AppBarStateLoading extends AppBarState {}

class AppBarStateFailure extends AppBarState {
  String message;
  AppBarStateFailure({
    required this.message,
  });
}
