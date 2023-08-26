// import 'package:flutter/material.dart';
//
// class ChatScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.lightBlueAccent.shade400,
//         elevation: 0.0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context); // Navigate back
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.table_rows_rounded),
//             onPressed: () {
//               // Handle the three lines wala icon action
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Image.asset('images/home.png'),
//
//           const SenderContainer(),
//           const SizedBox(height: 15),
//           const Text('July 25  23:34'),
//           const ChatMessageItem(),
//           const SenderContainer(),
//           const ChatMessageItem(),
//           const SenderContainer(),
//           const SenderContainer(),
//           // const SenderContainer(),
//           const Expanded(
//             child: Column(
//               children: [Divider(height: 0.0)],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               color: Colors.red,
//               child: Row(
//                 children: [
//                   const Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Write a reply...',
//                         contentPadding: EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20.0),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.blueAccent, width: 1.0),
//                           borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.blueAccent, width: 2.0),
//                           borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                         ),
//                       ),
//                     ),
//                   ),
//                   IconButton(
//                       icon: Icon(Icons.emoji_emotions), onPressed: () {}),
//                   IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
//                   IconButton(icon: Icon(Icons.attach_file), onPressed: () {}),
//                   IconButton(icon: Icon(Icons.send), onPressed: () {}),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class SenderContainer extends StatelessWidget {
//   const SenderContainer({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           ElevatedContainer(
//             color: Colors.lightBlueAccent.shade400,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Text(
//                   'Of Course. Are you interested in month-to-month or long term?',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ChatMessageItem extends StatelessWidget {
//   const ChatMessageItem({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.all(8.0),
//       child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 45,
//                   width: 45,
//                   child: CircleAvatar(
//                     backgroundImage: AssetImage(
//                       'images/profile.jpg',
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 8),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 7.0,
//                     ),
//                     Text(
//                       'Isla',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                       ),
//                     ),
//                     Text(
//                       '1m ago',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 12,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 8.0,
//                     ),
//                     ElevatedContainer(
//                       color: Colors.white,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Hi! could you tell me more about your subscription options?',
//                           ),
//                           SizedBox(height: 2),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ]),
//     );
//   }
// }
//
// class ElevatedContainer extends StatelessWidget {
//   final Color color;
//   final Widget child;
//
//   const ElevatedContainer({required this.color, required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // height: 60,
//       width: 230,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(8.0),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 4,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       padding: const EdgeInsets.all(8.0),
//       child: child,
//     );
//   }
// }

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.shade400,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.table_rows_rounded),
            onPressed: () {
              // Handle the three lines wala icon action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset('images/home.png'),
          Expanded(
            child: ListView(
              children: [
                const SenderContainer(),
                const SizedBox(height: 15),
                Center(child: const Text('July 25  23:34')),
                const ChatMessageItem(),
                const SenderContainer(),
                const ChatMessageItem(),
                const SenderContainer(),
                const SenderContainer(),
                // Add more chat message items here
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a reply...',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.emoji_emotions), onPressed: () {}),
                IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
                IconButton(icon: Icon(Icons.attach_file), onPressed: () {}),
                IconButton(icon: Icon(Icons.send), onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SenderContainer extends StatelessWidget {
  const SenderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ElevatedContainer(
            color: Colors.lightBlueAccent.shade400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Of Course. Are you interested in month-to-month or long term?',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessageItem extends StatelessWidget {
  const ChatMessageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/profile.jpg',
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      'Isla',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '1m ago',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    ElevatedContainer(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi! could you tell me more about your subscription options?',
                          ),
                          SizedBox(height: 2),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}

class ElevatedContainer extends StatelessWidget {
  final Color color;
  final Widget child;

  const ElevatedContainer({required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.all(8.0),
      child: child,
    );
  }
}
