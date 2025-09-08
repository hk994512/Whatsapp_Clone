import 'dart:async';

import 'package:flutter/material.dart';
import '/extension/my_extensions.dart';


import '../helpers/ui_helper.dart';
import 'splash_screen.dart';
class ONBOARDING extends StatefulWidget {
  const ONBOARDING({super.key});

  @override
  State<ONBOARDING> createState() => _ONBOARDINGState();
}

class _ONBOARDINGState extends State<ONBOARDING> {
  Timer? timer;
  _splash() {
    timer = Timer(
      const Duration(seconds: 2),
      () => context.pushReplaceRoute(SPLASHSCREEN()),
    );
  }

  @override
  void initState() {
    _splash();
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            UIHelpers.appImage('assets/logo.png'),
            Spacer(),
            UIHelpers.appImage('assets/1.png'),
            10.0.ht,
          ],
        ),
      ),
    );
  }
}
