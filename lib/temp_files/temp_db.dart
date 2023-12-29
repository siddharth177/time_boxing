import 'package:time_boxing/models/DailyPriorities.dart';

DailyPriorities getTop3PriorityForDay(String userId, DateTime day) {
  List<Priority> priorities = [
    Priority("1", "This is very very important"),
    Priority("2", "This is very important"),
    Priority("3", "This is important"),
  ];
  return DailyPriorities(userId, day, priorities);
}
