class DailyPriorities {
  String userId;
  DateTime date;
  List<Priority> priorities;
  DailyPriorities(this.userId, this.date, this.priorities);
}

class Priority {
  String priorityId;
  String description;
  Priority(this.priorityId, this.description);
}
