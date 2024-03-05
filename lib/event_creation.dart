// event_creation_screen.dart

import 'package:flutter/material.dart';
import 'event_model.dart';
import 'profile_screen.dart';

class EventCreationScreen extends StatefulWidget {
  @override
  _EventCreationScreenState createState() => _EventCreationScreenState();
}

class _EventCreationScreenState extends State<EventCreationScreen> {
  late TextEditingController eventNameController;
  late TextEditingController eventDescriptionController;
  late TextEditingController eventLocationController;
  late DateTime selectedDate;
  late TimeOfDay selectedTime;

  @override
  void initState() {
    super.initState();
    eventNameController = TextEditingController();
    eventDescriptionController = TextEditingController();
    eventLocationController = TextEditingController();
    selectedDate = DateTime.now();
    selectedTime = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Creation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: eventNameController,
              decoration: InputDecoration(labelText: 'Event Name'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: eventDescriptionController,
              decoration: InputDecoration(labelText: 'Event Description'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: eventLocationController,
              decoration: InputDecoration(labelText: 'Event Location'),
            ),
            SizedBox(height: 16),
            // Add date and time pickers or other input fields as needed

            ElevatedButton(
              onPressed: () {
                Event newEvent = Event(
                  name: eventNameController.text,
                  description: eventDescriptionController.text,
                  location: eventLocationController.text,
                  date: selectedDate,
                  time: selectedTime,
                );

                // Navigate to the profile screen with the new event
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(newEvent: newEvent),
                  ),
                );
              },
              child: Text('Save Event'),
            ),
          ],
        ),
      ),
    );
  }
}
