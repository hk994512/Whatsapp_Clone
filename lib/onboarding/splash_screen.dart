import 'package:flutter/material.dart'


;
import '../chats/chats.dart';
import '/extension/my_extensions.dart';
import '/helpers/ui_helper.dart' show UIHelpers;

class SPLASHSCREEN extends StatelessWidget {
  const SPLASHSCREEN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            100.0.ht,
            UIHelpers.appImage('assets/Lock.png'),
            UIHelpers.appText('WhatsApp Locked'),
            240.0.ht,
            InkWell(
              onTap: () => context.pushReplaceRoute(CHATSCREEN()),
              child: UIHelpers.appImage('assets/FingerPrint.png'),
            ),
            5.0.ht,
            UIHelpers.appText('Fingerprint Sensor'),
          ],
        ),
      ),
    );
  }
}
