import 'package:flutter/material.dart';

class MenuOption {

  final String route;
  final IconData icon;
  final String name;
  final Widget screen;
  final IconData icon2;

  MenuOption({
    required this.route, 
    required this.icon, 
    required this.name, 
    required this.screen,
    required this.icon2
  });
}