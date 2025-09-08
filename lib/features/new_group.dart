import 'package:flutter/material.dart';
import 'package:whatsapp_clone/helpers/ui_helper.dart';

class NEWGROUP extends StatelessWidget {
  const NEWGROUP({super.key});

  @override
  Widget build(BuildContext context) {
    final updates = [
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
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff017B6B),
        actions: [
          Padding(padding: EdgeInsets.all(10), child: Icon(Icons.search)),
        ],
        title: ListTile(
          title: UIHelpers.appText('New Group', color: 'ffffff'),
          subtitle: UIHelpers.appText('Add members', color: 'ffffff'),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          UIHelpers.appText(
            'Contacts on WhatsApp',
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
