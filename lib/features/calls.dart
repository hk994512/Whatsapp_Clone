import 'package:flutter/material.dart';

import '../helpers/ui_helper.dart';
class CALLS extends StatelessWidget {
  const CALLS({super.key});

  @override
  Widget build(BuildContext context) {
    final updates = [
      {
        'ava': 'assets/employee.png',
        'title': 'Employee',
        'img': 'assets/arrow-down-left.png',
        'time': '11:50pm',
        'tra': Icon(Icons.call, color: Colors.teal, size: 35),
      },
      {
        'ava': 'assets/cousin.png',
        'title': 'Asif Khan',
        'img': 'assets/arrow-up-right.png',
        'time': '9:25am',
        'tra': Icon(Icons.video_call, color: Colors.teal, size: 35),
      },
    ];
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          ListTile(
            subtitle: UIHelpers.appText(' Share a link for your WhatsApp call'),
            title: UIHelpers.appText('Create call link'),
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 40,
              child: Center(child: UIHelpers.appImage('assets/link.png')),
            ),
          ),
          UIHelpers.appText(
            'Recent',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          Column(
            children: List.generate(updates.length, (s) {
              final update = updates[s];
              return ListTile(
                trailing: update['tra'] as Icon,
                subtitle: Row(
                  children: [
                    UIHelpers.appImage(update['img'] as String),
                    UIHelpers.appText(update['time'] as String),
                  ],
                ),
                title: UIHelpers.appText(update['title'] as String),
                leading: CircleAvatar(
                  radius: 40,
                  child: Center(
                    child: UIHelpers.appImage(update['ava'] as String),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
