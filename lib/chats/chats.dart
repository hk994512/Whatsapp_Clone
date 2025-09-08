import 'package:flutter/material.dart';
import '/extension/my_extensions.dart';
import '/helpers/ui_helper.dart';

import '../features/broad_cast.dart';
import '../features/calls.dart';
import '../features/chat.dart';
import '../features/communities.dart';
import '../features/linked_devices.dart';
import '../features/new_group.dart';
import '../features/payments.dart';
import '../features/status.dart';
import '../settings/settings.dart';

class CHATSCREEN extends StatefulWidget {
  const CHATSCREEN({super.key});

  @override
  State<CHATSCREEN> createState() => _CHATSCREENState();
}

class _CHATSCREENState extends State<CHATSCREEN> {
  @override
  Widget build(BuildContext context) {
    final tabs = ['Chats', 'Status', 'Calls'];
    final pics = [
      {'title': 'assets/Camera.png', 'onTap': () {}},
      {'title': 'assets/search.png', 'onTap': () {}},
    ];

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff017B6B),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var s in pics)
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: UIHelpers.appImage(s['title'] as String),
                  ),
                10.0.wt,
                buildButton(),
              ],
            ),
          ],
          title: UIHelpers.appText('Whatsapp', color: 'ffffff', fontSize: 20),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,

            tabs: [
              UIHelpers.appImage('assets/Community.png'),
              for (var t in tabs)
                UIHelpers.appText(t, color: 'FFFFFF', fontSize: 16),
            ],
          ),
        ),
        body: TabBarView(
          children: [COMMUNITIES(), CHATS(), STATUSES(), CALLS()],
        ),
      ),
    );
  }

  buildButton() {
    final popups = [
      {'title': 'New Group', 'onTap': NEWGROUP()},
      {'title': 'New broadcast', 'onTap': NEWBROADCAST()},
      {'title': 'Linked devices', 'onTap': LINKEDDEVICES()},
      {'title': 'Payments', 'onTap': PAYMENTS()},
      {'title': 'Settings', 'onTap': SETTINGS()},
    ];
    return PopupMenuButton(
      iconColor: Colors.white,
      itemBuilder: (context) {
        return popups
            .map(
              (s) => PopupMenuItem(
                value: s['title'] as String,
                child: GestureDetector(
                  onTap: () => context.pushRoute(s['onTap'] as Widget),
                  child: UIHelpers.appText(s['title'] as String),
                ),
              ),
            )
            .toList();
      },
    );
  }
}
