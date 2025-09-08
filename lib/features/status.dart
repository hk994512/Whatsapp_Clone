import 'package:flutter/material.dart';

import '../helpers/ui_helper.dart';

class STATUSES extends StatelessWidget {
  const STATUSES({super.key});

  @override
  Widget build(BuildContext context) {
    final me = {
      'ava': 'assets/bahi.jpg',
      'title': 'My Status',
      'sub': 'Tap to add status updates',
    };
    final updates = [
      {
        'ava': 'assets/employee.png',
        'title': 'Employee',
        'sub': '5 minutes ago',
        'time': '11:50pm',
      },
      {
        'ava': 'assets/cousin.png',
        'title': 'Asif Khan',
        'sub': '1 minutes ago',
        'time': '9:25am',
      },
    ];
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          ListTile(
            subtitle: UIHelpers.appText(me['sub'] as String),
            title: UIHelpers.appText(me['title'] as String),
            leading: Stack(
              children: [
                CircleAvatar(
                  foregroundColor: Colors.blueAccent,
                  radius: 30,
                  foregroundImage: AssetImage(me['ava'] as String),
                ),
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 10,
                    child: Icon(Icons.add, color: Colors.white, size: 20),
                  ),
                ),
              ],
            ),
          ),
          UIHelpers.appText(
            'Recent Updates',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          Column(
            children: List.generate(updates.length, (s) {
              final update = updates[s];
              return ListTile(
                subtitle: UIHelpers.appText(update['sub'] as String),
                title: UIHelpers.appText(update['title'] as String),
                leading: CircleAvatar(
                  radius: 30,
                  foregroundImage: AssetImage(update['ava'] as String),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
