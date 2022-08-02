import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/module/forgot_password/forgot_password.dart';
import 'package:hire_me/module/login/login.dart';
import 'package:hire_me/module/register/register.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const LoginPage();
});

var registerRouteHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const RegisterPage();
});

var forgotRouteHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const ForgotPasswordPage();
});
