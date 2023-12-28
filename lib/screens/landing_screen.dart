import 'package:flutter/material.dart';

import '../widgets/landing_screen_display_element.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen(this.userName, {super.key});

  final String userName;

  @override
  State<LandingScreen> createState() {
    return _LandingScreenState();
  }
}

class _LandingScreenState extends State<LandingScreen> {
  String _greetingMessage = "Hello ";

  @override
  void initState() {
    super.initState();
    updateGreetingMessage();
  }

  void updateGreetingMessage() {
    String newGreetingMessage = "Good ";
    int currentTimeHour = DateTime.now().hour;
    if (currentTimeHour < 12) {
      newGreetingMessage += "Morning ";
    } else if (currentTimeHour < 17) {
      newGreetingMessage += "Afternoon ";
    } else {
      newGreetingMessage += "Evening ";
    }

    newGreetingMessage += widget.userName;

    setState(() {
      if (newGreetingMessage.startsWith("Good")) {
        _greetingMessage = newGreetingMessage;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _greetingMessage,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.account_box_outlined,
                  size: 34,
                  color: Theme.of(context).colorScheme.primary,
                ))
          ],
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LandingScreenElement('Time Boxing', Colors.red),
              SizedBox(
                height: 20,
              ),
              LandingScreenElement('Planner', Colors.green)
            ],
          ),
        ),
      ),
    );
  }
}
