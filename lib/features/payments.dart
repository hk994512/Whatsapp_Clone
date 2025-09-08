import 'package:flutter/material.dart';
import 'package:whatsapp_clone/extension/my_extensions.dart';

import '../helpers/ui_helper.dart';

class PAYMENTS extends StatelessWidget {
  const PAYMENTS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff017B6B),
        title: UIHelpers.appText('Payments', color: 'ffffff'),
      ),
      body: ListView(
        children: [
          20.0.ht,
          Row(
            children: [
              10.0.wt,
              Icon(Icons.star, size: 100, color: Colors.amber),
              3.0.wt,
              Icon(
                Icons.mobile_friendly_outlined,
                size: 200,
                color: Colors.teal,
              ),
              Icon(Icons.star, size: 70, color: Colors.purple),
            ],
          ),
          20.0.ht,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: UIHelpers.appText(
                'Send and receive money with secure Encryption',
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: UIHelpers.appText(
              'Crores of people are using Whatsapp for secure payments',
              color: '6C7880',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xff017B6B),
                fixedSize: Size(230, 40),
              ),
              onPressed: () {},
              child: UIHelpers.appText('Add bank account', color: 'ffffff'),
            ),
          ),
          PopupMenuDivider(),
          ListTile(
            title: UIHelpers.appText('Send payment'),
            leading: CircleAvatar(
              child: Center(child: UIHelpers.appImage('assets/payments.png')),
            ),
          ),
          ListTile(
            title: UIHelpers.appText('Scan payment QR code'),
            leading: CircleAvatar(
              child: Center(child: UIHelpers.appImage('assets/qr (1).png')),
            ),
          ),
        ],
      ),
    );
  }
}
