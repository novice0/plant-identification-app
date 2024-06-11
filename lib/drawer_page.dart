import 'package:final_plant_app_2/home_page.dart';
import 'package:final_plant_app_2/screens/drawer_plant_catalog.dart';
import 'package:final_plant_app_2/screens/drawer_about_screen.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  String selectedPage = '';

  @override
  Widget build(context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 72, 155, 75),
              image: DecorationImage(
                image: AssetImage('assets/images/wallpaper-4.jpg'),
              ),
            ),
            child: Text(
              'Welcome Admin!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_outlined),
            title: const Text('Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              setState(() {});
            },
          ),
          ListTile(
            leading: const Icon(Icons.energy_savings_leaf_rounded),
            title: const Text('Our Plants Catalog'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const DrawerPlantCatalog(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('About Us'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const DrawerAboutScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
