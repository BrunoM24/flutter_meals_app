import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/screens/meals.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(
    this.category, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MealsScreen(category)));
      },
      borderRadius: BorderRadius.circular(16),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [category.color.withOpacity(0.7), category.color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Text(
              category.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
