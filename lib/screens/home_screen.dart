import 'package:flutter/material.dart';

import '../widgets/screen_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Screens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScreenButton(
              label: 'Package Screen',
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PackageScreen()),
                );
              },
            ),
            ScreenButton(
              label: 'Pickup Date Screen',
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PickupDateScreen()),
                );
              },
            ),
            ScreenButton(
              label: 'Chat Screen',
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}



class PackageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Package Screen'),
      ),
      body: Center(
        child: Text('Package Screen Content'),
      ),
    );
  }
}

class PickupDateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pickup Date Screen'),
      ),
      body: Center(
        child: Text('Pickup Date Screen Content'),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
      ),
      body: Center(
        child: Text('Chat Screen Content'),
      ),
    );
  }
}
