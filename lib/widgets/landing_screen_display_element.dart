import 'package:flutter/material.dart';
import 'package:time_boxing/screens/current_week_summary_screen.dart';

class LandingScreenElement extends StatefulWidget {
  const LandingScreenElement(this.elementText, this.color, {super.key});

  final String elementText;
  final Color color;

  @override
  State<LandingScreenElement> createState() {
    return _LandingScreenElementState();
  }
}

class _LandingScreenElementState extends State<LandingScreenElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CurrentWeekSummaryScreen(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          backgroundColor: widget.color,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          widget.elementText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
