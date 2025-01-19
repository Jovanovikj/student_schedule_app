import 'package:flutter/material.dart';
import 'screens/schedule_screen.dart';
import 'screens/map_screen.dart';
import 'models/exam.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Податоци за испити
    final exams = [
      Exam(
        subject: 'Mathematics',
        dateTime: DateTime(2024, 2, 20, 10, 0),
        location: 'Building A, Room 101',
        latitude: 41.9981,
        longitude: 21.4254,
      ),
      Exam(
        subject: 'Physics',
        dateTime: DateTime(2024, 2, 22, 12, 0),
        location: 'Building B, Room 203',
        latitude: 41.9995,
        longitude: 21.4248,
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Schedule',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => ScheduleScreen(exams: exams),
        '/map': (context) => MapScreen(exams: exams),
      },
    );
  }
}
