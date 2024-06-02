import 'package:flutter/material.dart';
import 'package:riza_property/home/home.dart';
import 'package:riza_property/login/login.dart';
import 'package:riza_property/login/lupa_password.dart';
import 'package:riza_property/login/new_password.dart';
import 'package:riza_property/login/register.dart';
import 'package:riza_property/ui/onboard.dart';

MaterialPageRoute _pageRoute(
        {required Widget body, required RouteSettings settings}) =>
    MaterialPageRoute(builder: (_) => body, settings: settings);
Route? generateRoute(RouteSettings settings) {
  Route? _route;
  final _args = settings.arguments;
  switch (settings.name) {
    case rOnboard:
      _route = _pageRoute(body: onboard(), settings: settings);
      break;
    case rHome:
      _route = _pageRoute(body: HomeScreen(), settings: settings);
      break;
    case rRegister:
      _route = _pageRoute(body: RegisterScreen(), settings: settings);
      break;
    case rLogin:
      _route = _pageRoute(body: login(), settings: settings);
      break;
    case rLupa:
      _route = _pageRoute(body: lupapassword(), settings: settings);
      break;
    case rNew:
      _route = _pageRoute(body: newpas(), settings: settings);
  }
  return _route;
}

final NAV_KEY = GlobalKey<NavigatorState>();
const String rOnboard = '/onboard';
const String rHome = '/home';
const String rRegister = '/register';
const String rLogin = '/login';
const String rLupa = '/lupa';
const String rNew = '/new';
