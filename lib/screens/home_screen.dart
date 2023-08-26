import 'package:flutter/material.dart';
import 'package:packages_app/screens/package_screen.dart';
import 'package:packages_app/screens/pickup_date_screen.dart';

import '../widgets/screen_button.dart';
import 'chat_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScreenButton(
              label: 'Pickup Date Screen',
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PickupDateScreen()),
                );
              },
            ),
            ScreenButton(
              label: 'Chat Screen',
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()),
                );
              },
            ),
            ScreenButton(
              label: 'Package Screen',
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PackageScreen()),
                );
              },
            ),


          ],
        ),
      ),
    );
  }
}