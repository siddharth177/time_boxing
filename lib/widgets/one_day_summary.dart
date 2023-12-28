import 'package:flutter/material.dart';

class OneDaySummary extends StatefulWidget {
  const OneDaySummary(this.title, {super.key});
  final String title;

  @override
  State<OneDaySummary> createState() => _OneDaySummaryState();
}

class _OneDaySummaryState extends State<OneDaySummary> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Card(
          // margin: const EdgeInsets.fromLTRB(5, 0, 0, 5),
          color: Colors.black,
          child: TopThreeItems(),
        ),
      ],
    );
  }
}

class TopThreeItems extends StatefulWidget {
  const TopThreeItems({super.key});

  @override
  State<TopThreeItems> createState() => _TopThreeItemsState();
}

class _TopThreeItemsState extends State<TopThreeItems> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.purple.shade200],
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1. This is very very important",
              style: TextStyle(color: Colors.yellow),
            ),
            Text(
              "2. This is very important",
              style: TextStyle(color: Colors.yellow),
            ),
            Text(
              "3. This is important",
              style: TextStyle(color: Colors.yellow),
            ),
          ],
        ),
      ),
    );
  }
}
