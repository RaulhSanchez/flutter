import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/models.dart';
import 'package:flutter_application_1/screens/screens.dart';

class AppRoutes {
  static const initalRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'LisView1',
        name: 'List View 1 Screen',
        screen: const ListView1Screen(),
        icon: Icons.home),
    MenuOption(
        route: 'LisView2',
        name: 'List View 2 Screen',
        screen: const ListView2Screen(),
        icon: Icons.home),
    MenuOption(
        route: 'Alerts',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'Alerts',
        name: 'Alertas',
        screen: const CardScreen(),
        icon: Icons.card_travel_sharp)
  ];
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
