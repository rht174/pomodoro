import 'package:flutter/material.dart';
import 'package:pomodoro/pomodoro_screen.dart';
import 'package:pomodoro/timer_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => TimerService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PomodoroScreen(),
    );
  }
}
