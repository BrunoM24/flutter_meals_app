import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  final Category category;

  const MealsScreen(this.category, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filteredMeals = dummyMeals
        .where(
          (element) => element.categories.contains(category.id),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text(category.title)),
      body: ListView.builder(
        itemBuilder: (context, id) => MealItem(filteredMeals[id]),
        itemCount: filteredMeals.length,
      ),
    );
  }
}
