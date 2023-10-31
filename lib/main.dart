import 'package:a_sports/screens/main_screen.dart';
import 'package:a_sports/settings/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/home": (context) => MainScreen(),
      },
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      theme: theme(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    );
  }
}