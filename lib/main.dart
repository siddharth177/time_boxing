import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:time_boxing/screens/landing_screen.dart';
import 'package:time_boxing/utils/theming.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String username = 'User';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: kDarkThemeData,
      theme: kThemeData,
      home: LandingScreen(username),
      themeMode: ThemeMode.system,
    );
  }
}
