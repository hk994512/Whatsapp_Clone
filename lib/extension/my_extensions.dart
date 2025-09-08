import 'package:flutter/material.dart';

extension Routes on BuildContext {
  NavigatorState get route => Navigator.of(this);

  buildRoute(Widget screen) {
    return MaterialPageRoute(builder: (_) => screen);
  }

  pushRoute(Widget screen) => route.push(buildRoute(screen));
  pushReplaceRoute(Widget screen) => route.pushReplacement(buildRoute(screen));
  popRoute() => route.pop();
}

extension Adaptives on double {
  get ht => SizedBox(height: toDouble());
  get wt => SizedBox(width: toDouble());
}
