import 'package:flutter/material.dart';
import 'package:whatsapp_clone/extension/my_extensions.dart';

import '../helpers/ui_helper.dart';

class SETTINGS extends StatelessWidget {
  const SETTINGS({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsItems = [
      {
        'ico': 'assets/account.png',
        'title': 'Account',
        'sub': 'Security notifications, change number',
      },
      {
        'ico': 'assets/Privacy.png',
        'title': 'Privacy',
        'sub': 'Block contacts, disappearing messages',
      },
      {
        'ico': 'assets/Avatar.png',
        'title': 'Avatar',
        'sub': 'Create, edit, profile photo',
      },
      {
        'ico': 'assets/noti.png',
        'title': 'Notifications',
        'sub': 'Message, group & call tones',
      },
      {
        'ico': 'assets/storage.png',
        'title': 'Storage',
        'sub': 'Network usage, auto-download',
      },
      {
        'ico': 'assets/lang.png',
        'title': 'App Language',
        'sub': 'English (device\'s language)',
      },
      {
        'ico': 'assets/help.png',
        'title': 'Help',
        'sub': 'Help centre, contact us, privacy policy',
      },
      {
        'ico': 'assets/invite.png',
        'title': 'Invite a friend',
        'sub': 'Help centre, contact us, privacy policy',
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
          title: UIHelpers.appText('Settings', color: 'ffffff', fontSize: 20),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          ListTile(
            trailing: UIHelpers.appImage(
              'assets/qr (1).png',
              fit: BoxFit.fitHeight,
              height: 40,
            ),
            subtitle: UIHelpers.appText('I love my Parents'),
            title: Row(
              children: [
                UIHelpers.appText('M Hamza Khan'),
                1.0.wt,
                UIHelpers.appImage(
                  'assets/f35c0d3a6a30d1d863d1a00d709fdf18 1.png',
                ),
              ],
            ),
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/bahi.jpg'),
            ),
          ),
          for (var s in settingsItems)
            ListTile(
              title: UIHelpers.appText(s['title'] as String),
              subtitle: UIHelpers.appText(s['sub'] as String),
              leading: UIHelpers.appImage(s['ico'] as String),
            ),
        ],
      ),
    );
  }
}
