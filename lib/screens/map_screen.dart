import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/exam.dart';

class MapScreen extends StatelessWidget {
  final List<Exam> exams;

  MapScreen({required this.exams});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Event Locations')),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(exams[0].latitude, exams[0].longitude),
          zoom: 12,
        ),
        markers: exams
            .map((exam) => Marker(
          markerId: MarkerId(exam.subject),
          position: LatLng(exam.latitude, exam.longitude),
          infoWindow: InfoWindow(
            title: exam.subject,
            snippet: exam.location,
          ),
        ))
            .toSet(),
      ),
    );
  }
}
