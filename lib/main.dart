import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_hub_flutter/screens/dashboard_screen.dart';
import 'package:task_hub_flutter/screens/tab_screen.dart';
import 'package:task_hub_flutter/screens/task_list_screen.dart';


void main() {
  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
    );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // appBarTheme: AppBarTheme()
      ),
      home: TabScreen(),
    );

  }
}