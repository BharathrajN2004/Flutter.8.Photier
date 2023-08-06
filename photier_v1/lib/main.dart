import "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';

import 'Pages/Splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences preferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Montserrat"),
      home: Splash(),
    );
  }
}
