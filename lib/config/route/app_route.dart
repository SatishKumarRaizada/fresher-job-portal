import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:hire_me/config/route/route_helper.dart';

class Routes {
  static String root = '/';
  static String registerRoute = '/login/register';
  static String forgotRoute = '/login/forgot';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return Container();
      },
    );
    router.define(root, handler: rootHandler);
    router.define(
      registerRoute,
      handler: registerRouteHandler,
      transitionType: TransitionType.inFromRight,
    );
    router.define(
      forgotRoute,
      handler: forgotRouteHandler,
      transitionType: TransitionType.inFromRight,
    );
  }
}
