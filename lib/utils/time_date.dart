int getCurrentTimeHour() {
  return DateTime.now().hour;
}

String getCurrentDayPeriod() {
  int currentTimeHour = getCurrentTimeHour();
  if (currentTimeHour < 12) {
    return "Morning";
  } else if (currentTimeHour < 17) {
    return "Afternoon";
  } else {
    return "Evening";
  }
}

String getGreetings() {
  String currentDayPeriod = getCurrentDayPeriod();
  return "Good $currentDayPeriod";
}

String getGreetingsForUser(String user) {
  return "$getGreetings() $user";
}
