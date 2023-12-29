import 'package:flutter/material.dart';
import 'package:time_boxing/widgets/top_three_items_element.dart';

class DayTopPriorityDisplayElement extends StatefulWidget {
  const DayTopPriorityDisplayElement(this.title, {super.key});
  final String title;

  @override
  State<DayTopPriorityDisplayElement> createState() =>
      _DayTopPriorityDisplayElementState();
}

class _DayTopPriorityDisplayElementState
    extends State<DayTopPriorityDisplayElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      // margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {},
            onLongPress: () {},
            splashColor: Colors.green,
            highlightColor: Colors.blue,
            hoverColor: Colors.yellow,
            borderRadius: BorderRadius.circular(20),
            child: Ink(
              width: double.infinity,
              // margin: const EdgeInsets.fromLTRB(5, 0, 0, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.purple, Colors.purple.shade200],
                ),
              ),
              child: DaysPriorityItems(),
            ),
          ),
        ],
      ),
    );
  }
}
