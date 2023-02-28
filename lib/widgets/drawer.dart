import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters.dart';
import 'package:meals_app/screens/tabs.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          Container(
            height: 100,
            color: Theme.of(context).primaryColor,
            child: DrawerHeader(
              child: Text(
                'Meals App',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          ListTile(
            iconColor: Theme.of(context).primaryColor,
            textColor: Theme.of(context).primaryColor,
            leading: const Icon(
              Icons.restaurant,
              size: 26,
            ),
            title: const Text(
              'Meals',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Tabs(),
                ),
              );
            },
          ),
          ListTile(
            iconColor: Theme.of(context).primaryColor,
            textColor: Theme.of(context).primaryColor,
            leading: const Icon(
              Icons.settings,
              size: 26,
            ),
            title: const Text(
              'Settings',
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const FiltersScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
