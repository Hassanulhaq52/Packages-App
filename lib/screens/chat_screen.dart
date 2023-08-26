import 'package:flutter/material.dart';

import '../widgets/receiver_message.dart';
import '../widgets/sender_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
                const SenderMessage(),
                const SizedBox(height: 15),
                Center(child: const Text('July 25  23:34')),
                const ReceiverMessage(),
                const SenderMessage(),
                const ReceiverMessage(),
                const SenderMessage(),
                const SenderMessage(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a reply...',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white54, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white54, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    icon: const Icon(Icons.emoji_emotions), onPressed: () {}),
                IconButton(icon: const Icon(Icons.image), onPressed: () {}),
                IconButton(
                    icon: const Icon(Icons.attach_file), onPressed: () {}),
                IconButton(icon: const Icon(Icons.send), onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
