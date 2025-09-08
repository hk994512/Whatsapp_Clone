import 'package:flutter/material.dart';

import '../helpers/ui_helper.dart';
class COMMUNITIES extends StatelessWidget {
  const COMMUNITIES({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: UIHelpers.appText(
          'NO COMMUNTIES HERE',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
