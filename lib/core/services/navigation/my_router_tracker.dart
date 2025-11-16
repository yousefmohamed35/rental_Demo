import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MyRouteTracker extends AutoRouteObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    debugPrint('🟢 Pushed: ${route.settings.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    debugPrint('🔴 Popped: ${route.settings.name}');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    debugPrint('🟡 Replaced: ${oldRoute?.settings.name} -> ${newRoute?.settings.name}');
  }
}