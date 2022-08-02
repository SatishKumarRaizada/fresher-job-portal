import 'package:flutter/material.dart';

class MaerskAppRouteObserver extends NavigatorObserver {
  static List<Route<dynamic>> routeStack = [];
  static List<String?> routeNames = [];

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    routeStack.add(route);
    routeNames.add(route.settings.name);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    routeStack.removeLast();
    routeNames.removeLast();
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    routeStack.removeLast();
    routeNames.removeLast();
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    routeStack.removeLast();
    routeStack.add(newRoute!);
    routeNames.removeLast();
    routeNames.add(newRoute.settings.name);
  }
}
