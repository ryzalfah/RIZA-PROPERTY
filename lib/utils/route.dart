import 'package:flutter/material.dart';
import 'package:riza_property/home/Cenarius.dart';
import 'package:riza_property/home/Serprenta.dart';
import 'package:riza_property/home/Sylvanas.dart';
import 'package:riza_property/home/home.dart';
import 'package:riza_property/login/login.dart';
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
    case rcenarius:
      _route = _pageRoute(body: Cenarius(), settings: settings);
      break;
    case rserprenta:
      _route = _pageRoute(body: Serprenta(), settings: settings);
      break;
    case rsylvanas:
      _route = _pageRoute(body: Sylvanas(), settings: settings);
      break;
  }
  return _route;
}

final NAV_KEY = GlobalKey<NavigatorState>();
const String rOnboard = '/onboard';
const String rHome = '/home';
const String rRegister = '/register';
const String rLogin = '/login';
const String rcenarius = '/rumah3';
const String rserprenta = '/rumah2';
const String rsylvanas = '/rumah1';
