import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/ui/navigation/main_nav_item.dart';

class SimpleParser extends RouteInformationParser<MainNavItem> {
  @override
  Future<MainNavItem> parseRouteInformation(RouteInformation routeInformation) async {
    Fimber.i('Deep Link – routeInformation: $routeInformation');
    return Future.value(
      MainNavItem.mainScreen(),
    );
  }
}
