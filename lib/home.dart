import 'package:flutter/material.dart';
import 'about_screen.dart';
import 'event_creation.dart';
import 'profile_screen.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SARC',
          textAlign: Null,
        ),
        backgroundColor: Colors.blue,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'SARC',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Event Creation'),
              onTap: () {
                Navigator.pushNamed(context, 'event_creation');
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, 'profile_screen');
              },
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                Navigator.pushNamed(context, 'about_screen');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.blue,
                child: Text(
                  'WELCOME TO SARC',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Bridging Passion and Progress!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Uniting Alumni, Fostering Legacy: SARC IIT Bombay - Bridging Past and Present Through Inspiring Events and Connections.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        shadows: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                height: 250.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedContainer(
                      color: Colors.green,
                      imageUrl:
                          'https://koitoroklo.sarc-iitb.org/api/images/event_images/event_Beyond_The_Horizon_vPHH2Uh.jpg', // Replace with actual URL
                    ),
                    ElevatedContainer(
                      color: Colors.blue,
                      imageUrl:
                          'https://koitoroklo.sarc-iitb.org/api/images/event_images/event_Workshops_lT4KQ2p.jpg', // Replace with actual URL
                    ),
                    ElevatedContainer(
                      color: Colors.orange,
                      imageUrl:
                          'https://koitoroklo.sarc-iitb.org/api/images/event_images/event_Speed_mentoring_l6iGBBe.jpg', // Replace with actual URL
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Us',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Student Alumni Relations Cell (SARC) was established in 2008 to convey and harness the connection of the alumni with the institute. It is a student-run body and a crucial part of the Dean Alumni and Corporate Relations (Dean ACR) Office, whose primary goal is to promote closer connections between current students and alumni, fostering a collaborative atmosphere of ideas, respect, knowledge, and values that reflect the mission of our institution.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        shadows: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.blue,
                child: Text(
                  '© 2024 SARC',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ElevatedContainer extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final String imageUrl;

  ElevatedContainer({
    required this.color,
    this.height = 80.0,
    this.width = 240.0,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          imageUrl,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
