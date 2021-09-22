import 'package:flutter/material.dart';
import 'package:myrecipes/screens/settings_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            height: MediaQuery.of(context).size.height * 0.2,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10),
            child: Text(
              'Recipes',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(
                    Icons.restaurant,
                    size: 26,
                  ),
                  title: Text(
                    'Meals',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 26,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(Setting.settingRoute);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
