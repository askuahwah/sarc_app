// profile_screen.dart

import 'package:flutter/material.dart';
import 'event_model.dart';

class ProfileScreen extends StatefulWidget {
  final Event? newEvent;

  ProfileScreen({Key? key, this.newEvent}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Event> events = [];

  // Replace these with your actual static username and email
  String username = "John Doe";
  String email = "john.doe@example.com";

  @override
  void initState() {
    super.initState();

    // Add the new event to the list if it is not null
    if (widget.newEvent != null) {
      events.add(widget.newEvent!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFF40F0F0),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage("https://cdn.dribbble.com/users/7518957/avatars/small/237c225b846ea268d04a61661843b445.jpg?1620743374"),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username: $username',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Email: $email',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        // Additional user information can be displayed here
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Attended Events',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(
                        'Event: ${events[index].name}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Description: ${events[index].description}'),
                          Text('Location: ${events[index].location}'),
                          Text(
                            'Date: ${events[index].date.toString()}',
                          ),
                          Text(
                            'Time: ${events[index].time.format(context)}',
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
