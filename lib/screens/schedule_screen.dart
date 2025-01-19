import 'package:flutter/material.dart';
import '../models/exam.dart';

class ScheduleScreen extends StatelessWidget {
  final List<Exam> exams;

  ScheduleScreen({required this.exams});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Schedule'),
        actions: [
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () => Navigator.pushNamed(context, '/map'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          final exam = exams[index];
          return ListTile(
            title: Text(exam.subject),
            subtitle: Text(
              '${exam.dateTime} at ${exam.location}',
            ),
            onTap: () {
              // Може да покажете повеќе детали за испитот
            },
          );
        },
      ),
    );
  }
}
