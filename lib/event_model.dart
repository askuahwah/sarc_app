// event_model.dart

import 'package:flutter/material.dart';

class Event {
  final String name;
  final String description;
  final String location;
  final DateTime date;
  final TimeOfDay time;

  Event({
    required this.name,
    required this.description,
    required this.location,
    required this.date,
    required this.time,
  });
}
