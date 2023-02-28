import 'package:flutter/material.dart';
import 'package:meals_app/widgets/drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  title: const Text('Gluten Free'),
                  subtitle: const Text('Only include gluten free meals'),
                  value: _glutenFree,
                  onChanged: (value) => setState(() {
                    _glutenFree = value;
                  }),
                ),
                SwitchListTile(
                  title: const Text('Vegetarian'),
                  subtitle: const Text('Only include vegetarian meals'),
                  value: _vegetarian,
                  onChanged: (value) => setState(() {
                    _vegetarian = value;
                  }),
                ),
                SwitchListTile(
                  title: const Text('Vegan'),
                  subtitle: const Text('Only include vegan meals'),
                  value: _vegan,
                  onChanged: (value) => setState(() {
                    _vegan = value;
                  }),
                ),
                SwitchListTile(
                  title: const Text('Lactose Free'),
                  subtitle: const Text('Only include lactose free meals'),
                  value: _lactoseFree,
                  onChanged: (value) => setState(() {
                    _lactoseFree = value;
                  }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
