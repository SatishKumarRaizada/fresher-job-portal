import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/config/route/route_helper.dart';

class Routes {
  static String root = '/';
  static String registerRoute = '/login/register';
  static String forgotRoute = '/login/forgot';
  static String dashboardRoute = '/dashboard';
  static String searchRoute = '/dashboard/search';
  static String notificationRoute = '/dashboard/notification';
  static String detailRoute = '/jobs/detail';

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
    router.define(
      dashboardRoute,
      handler: dashboardRouteHandler,
      transitionType: TransitionType.inFromRight,
    );
    router.define(
      searchRoute,
      handler: searchRouteHandler,
      transitionType: TransitionType.inFromBottom,
    );
    router.define(
      notificationRoute,
      handler: notificationRouteHandler,
      transitionType: TransitionType.inFromBottom,
    );
    router.define(
      detailRoute,
      handler: detailRouteHandler,
      transitionType: TransitionType.inFromRight,
    );
  }
}
