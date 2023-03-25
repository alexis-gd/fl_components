

import 'package:flutter/material.dart';

class AppTheme {

  static const Color primaryLight = Colors.indigo;
  static const Color secondaryLight = Colors.blueGrey;
  static const Color textLight = Colors.indigo;
  static const Color primaryDark = Color.fromRGBO(18, 28, 37, 1);
  static const Color secondaryDark = Color.fromRGBO(52, 73, 94, 1);
  static const Color textDark = Color.fromRGBO(32, 170, 153, 1);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        // Ajustes para todo el sistema a menos que se sobre escriba o se cambie el tema

        // ajustes de la barra de arriba
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: primaryLight,
          elevation: 0
        ),

        // texto de los botones de la card
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom( foregroundColor: primaryLight),
        ),

        // botón flotante
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primaryLight,
          elevation: 3
        ),

        // botón elevado
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor : primaryLight,
            shape: const StadiumBorder(),
            elevation: 3
          )
        )
    );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: secondaryDark,
          elevation: 0
        ),
        scaffoldBackgroundColor: primaryDark
    );


}