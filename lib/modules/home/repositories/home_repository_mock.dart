import 'package:split_it/modules/home/models/dashboard_model.dart';

import 'package:split_it/shared/models/event_model.dart';

import 'home_repository.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<DashboardModel> getDashboard() async {
    await Future.delayed(Duration(seconds: 2));
    return DashboardModel(send: 100, receive: 50);
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      EventModel(
          title: "Churrasco",
          created: DateTime.parse("2021-05-01"),
          value: 100,
          people: 1),
      EventModel(
          title: "Churrasco",
          created: DateTime.parse("2021-05-01"),
          value: -100,
          people: 1),
      EventModel(
          title: "Churrasco",
          created: DateTime.parse("2021-05-01"),
          value: 100,
          people: 1),
      EventModel(
          title: "Churrasco",
          created: DateTime.parse("2021-05-01"),
          value: 100,
          people: 1),
      EventModel(
          title: "Churrasco",
          created: DateTime.parse("2021-05-01"),
          value: -100,
          people: 1),
      EventModel(
          title: "Churrasco",
          created: DateTime.parse("2021-05-01"),
          value: 100,
          people: 1),
      EventModel(
          title: "Churrasco",
          created: DateTime.parse("2021-05-01"),
          value: 100,
          people: 1),
      EventModel(
          title: "Churrasco",
          created: DateTime.parse("2021-05-01"),
          value: -100,
          people: 1),
    ];
  }
}
