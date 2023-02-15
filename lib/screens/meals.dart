import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

class MealsScreen extends StatelessWidget {
  final Category category;

  const MealsScreen(this.category, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meals')),
      body: Center(child: Text(category.title)),
    );
  }
}
