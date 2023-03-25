import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import '../screens/screens.dart';


class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_filled, icon2: Icons.arrow_forward_ios_outlined),
    MenuOption(route: 'listview1', name: 'List View 1 Screen', screen: const ListView1Screen(), icon: Icons.list, icon2: Icons.arrow_forward_ios_outlined),
    MenuOption(route: 'listview2', name: 'List View 2 Screen', screen: const ListView2Screen(), icon: Icons.list_alt, icon2: Icons.arrow_forward_ios_outlined),
    MenuOption(route: 'alert', name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.lock_clock_outlined, icon2: Icons.arrow_forward_ios_outlined),
    MenuOption(route: 'card', name: 'Card Screen', screen: const CardScreen(), icon: Icons.card_membership, icon2: Icons.arrow_forward_ios_outlined),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.person_pin, icon2: Icons.arrow_forward_ios_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_outlined, icon2: Icons.arrow_forward_ios_outlined)
  ];

  static  Map<String, Widget Function(BuildContext)> getAppRoutes() {
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const HomeScreen() });

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route : (BuildContext context ) => option.screen });
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'      : (BuildContext context ) => const HomeScreen(),
  //   'listview1' : (BuildContext context ) => const ListView1Screen(),
  //   'listview2' : (BuildContext context ) => const ListView2Screen(),
  //   'alert'     : (BuildContext context ) => const AlertScreen(),
  //   'card'      : (BuildContext context ) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
      );
  }

}