import 'package:flutter/material.dart';
import '/extension/my_extensions.dart';
import '../chats/chat_screen.dart';
import '../helpers/ui_helper.dart';

class CHATS extends StatelessWidget {
  const CHATS({super.key});

  @override
  Widget build(BuildContext context) {
    final chats = [
      {
        'ava': 'assets/you.jpg',
        'title': 'Bahi',
        'sub': 'Work Started',
        'time': '8:20am',
      },
      {
        'ava': 'assets/bahi.jpg',
        'title': 'Me',
        'sub': 'How are you?',
        'time': '9:25am',
      },
      {
        'ava': 'assets/employee.png',
        'title': 'Employee',
        'sub': 'How much budget for this project?',
        'time': '11:50pm',
      },
      {
        'ava': 'assets/Unknown.png',
        'title': 'Unknown',
        'sub': 'From where can it be get started?',
        'time': '1:50pm',
      },
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: UIHelpers.appImage('assets/Message.png'),
      ),
      body: Column(
        children: List.generate(chats.length, (s) {
          final chat = chats[s];
          return Padding(
            padding: EdgeInsets.all(5),
            child: ListTile(
              onTap:
                  () => context.pushRoute(
                    CustomChatScreen(
                      chatTitle: chat['title'] as String,
                      avatar: chat['ava'] as String,
                    ),
                  ),
              subtitle: UIHelpers.appText(chat['sub'] as String),
              title: UIHelpers.appText(chat['title'] as String),
              trailing: UIHelpers.appText(chat['time'] as String, fontSize: 12),
              leading: CircleAvatar(
                radius: 30,
                foregroundImage: AssetImage(chat['ava'] as String),
              ),
            ),
          );
        }),
      ),
    );
  }
}
