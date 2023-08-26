import 'package:flutter/material.dart';
import 'package:packages_app/screens/package_screen.dart';

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





class PickupDateScreen extends StatelessWidget {
  const PickupDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pickup Date Screen'),
      ),
      body: const Center(
        child: Text('Pickup Date Screen Content'),
      ),
    );
  }
}



// class SenderContainer extends StatelessWidget {
//   const SenderContainer({
//     super.key,
//
//
//   });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//
//               ElevatedContainer(
//                 color: Colors.blue,
//                 child: const Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Text(
//                         'Of Course. Are you interested in month-to-month or long term?',
//                         style: TextStyle(color: Colors.white)),
//
//
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }