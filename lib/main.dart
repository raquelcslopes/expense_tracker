import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

//k for global variables
var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color(0xFFC7B198),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark, //tells it is scheme for dark mode
  seedColor: Color(0xFF142D4C),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: CardThemeData().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: EdgeInsets.all(10),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: CardThemeData().copyWith(
          color: Color(0xFFC7B198),
          margin: EdgeInsets.all(10),
        ),
        //has no copyWith method, we have to create a new object
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ),
      //theme that is set in the system
      themeMode: ThemeMode.system,
      home: Expenses(),
    ),
  );
}
