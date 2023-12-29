import 'package:flutter/cupertino.dart';
import 'package:time_boxing/models/DailyPriorities.dart';
import 'package:time_boxing/temp_files/temp_db.dart';

class DaysPriorityItems extends StatefulWidget {
  const DaysPriorityItems({super.key});

  @override
  State<DaysPriorityItems> createState() => _DaysPriorityItemsState();
}

class _DaysPriorityItemsState extends State<DaysPriorityItems> {
  @override
  Widget build(BuildContext context) {
    DailyPriorities dp = getTop3PriorityForDay('1', DateTime.now());
    List<Text> _priorityItems = [];

    for (var element in dp.priorities) {
      _priorityItems.add(Text('${element.priorityId}: ${element.description}'));
    }

    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: _priorityItems,
      ),
    );
  }
}
