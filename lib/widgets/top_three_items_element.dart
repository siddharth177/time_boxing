import 'package:flutter/cupertino.dart';

class DaysPriorityItems extends StatefulWidget {
  const DaysPriorityItems({super.key});

  @override
  State<DaysPriorityItems> createState() => _DaysPriorityItemsState();
}

class _DaysPriorityItemsState extends State<DaysPriorityItems> {
  @override
  Widget build(BuildContext context) {
    List<Text> _priorityItems = [];

    for (int i = 0; i < 3; i++) {
      _priorityItems.add(Text('Top Priority Item $i'));
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
