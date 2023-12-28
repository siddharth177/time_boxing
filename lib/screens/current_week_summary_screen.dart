import 'package:flutter/material.dart';
import 'package:time_boxing/widgets/one_day_summary.dart';

class CurrentWeekSummaryScreen extends StatefulWidget {
  const CurrentWeekSummaryScreen({super.key});

  @override
  State<CurrentWeekSummaryScreen> createState() =>
      _CurrentWeekSummaryScreenState();
}

class _CurrentWeekSummaryScreenState extends State<CurrentWeekSummaryScreen> {
  List<String> list = getNext7Days();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBarTitle'),
        ),
        backgroundColor: Colors.red,
        body: ListView.builder(
          itemCount: list.length,
          scrollDirection: Axis.vertical, // Set horizontal scrolling
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return OneDaySummary(list[index]);
          },
        ),
      ),
    );
  }
}

List<String> getNext7Days() {
  List<String> days = [];
  DateTime currentDate = DateTime.now();

  for (int i = 0; i < 7; i++) {
    if (i == 0) {
      days.add('Today');
    } else if (i == 1) {
      days.add('Tomorrow');
    } else {
      days.add(formatDate(currentDate.add(Duration(days: i))));
    }
  }
  return days;
}

String formatDate(DateTime date) {
  String day = date.day.toString();
  String dayWithSuffix = _getDayWithSuffix(date.day);
  String monthAbbreviation = _getMonthAbbreviation(date.month);

  return '$dayWithSuffix $monthAbbreviation';
}

String _getMonthAbbreviation(int month) {
  switch (month) {
    case 1:
      return 'Jan';
    case 2:
      return 'Feb';
    case 3:
      return 'Mar';
    case 4:
      return 'Apr';
    case 5:
      return 'May';
    case 6:
      return 'Jun';
    case 7:
      return 'Jul';
    case 8:
      return 'Aug';
    case 9:
      return 'Sep';
    case 10:
      return 'Oct';
    case 11:
      return 'Nov';
    case 12:
      return 'Dec';
    default:
      return '';
  }
}

String _getDayWithSuffix(int day) {
  if (day >= 11 && day <= 13) {
    return '${day}th';
  }

  switch (day % 10) {
    case 1:
      return '${day}st';
    case 2:
      return '${day}nd';
    case 3:
      return '${day}rd';
    default:
      return '${day}th';
  }
}
