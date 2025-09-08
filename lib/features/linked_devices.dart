import 'package:flutter/material.dart';
import 'package:whatsapp_clone/extension/my_extensions.dart';
import 'package:whatsapp_clone/helpers/ui_helper.dart' show UIHelpers;
class LINKEDDEVICES extends StatelessWidget {
  const LINKEDDEVICES({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff017B6B),

        title: UIHelpers.appText('Linked Devices', color: 'ffffff'),
      ),
      body: ListView(
        padding: EdgeInsets.all(7),
        children: [
          30.0.ht,
          UIHelpers.appText('Use WhatsApp on Web, Desktop, and other devices.'),
          10.0.ht,
          UIHelpers.appImage('assets/devices.png'),
          20.0.ht,
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xff017B6B),
              fixedSize: Size(250, 40),
            ),
            onPressed: () {},
            child: UIHelpers.appText('Link a Device', color: 'ffffff'),
          ),
          PopupMenuDivider(),
          10.0.ht,
          UIHelpers.appText('Device Status', color: '6C7880', fontSize: 13),
          UIHelpers.appText(
            'Tap a device to log out',
            fontSize: 16,
            color: '6C7880',
          ),
          10.0.ht,
          ListTile(
            subtitle: UIHelpers.appText(
              'Last active today at 12:00 am',
              fontSize: 15,
              color: '6C7880',
            ),
            title: UIHelpers.appText(
              'Windows',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            leading: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xff02B099),
              child: UIHelpers.appImage('assets/windows.png'),
            ),
          ),
          20.0.ht,
          Center(
            child: UIHelpers.appText(
              'Your personal messages are end-to-end encrypted\n on allyour devices.',
            ),
          ),
        ],
      ),
    );
  }
}
