import 'package:flutter/material.dart';
import 'package:meals_app/screens/tabs.dart';

void main() {
  runApp(const MyApp());
}

Map<String, bool> _filters = {
  'gluten': false,
  'lactose': false,
  'vegetarian': false,
  'vegan': false,
};

void setFilters() {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          fontFamily: 'Montserrat',
          textTheme: ThemeData.light().textTheme.copyWith(
                titleMedium: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
      home: const Tabs(),
    );
  }
}
