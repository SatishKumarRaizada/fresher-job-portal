import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/module/Job_detail/job_detail.dart';
import 'package:hire_me/module/dashboard/dashboard.dart';
import 'package:hire_me/module/forgot_password/forgot_password.dart';
import 'package:hire_me/module/login/login.dart';
import 'package:hire_me/module/notification/notification.dart';
import 'package:hire_me/module/register/register.dart';
import 'package:hire_me/module/search/search.dart';

var rootHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const LoginPage();
});

var registerRouteHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const RegisterPage();
});

var forgotRouteHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const ForgotPasswordPage();
});

var dashboardRouteHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const DashboardPage();
});

var searchRouteHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const SearchPage();
});

var notificationRouteHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const NotificationPage();
});

var detailRouteHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const JobDetailPage();
});
