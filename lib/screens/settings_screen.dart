import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myrecipes/widgets/drawer.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);
  static const settingRoute = '/settings';

  @override
  State<StatefulWidget> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _isglutten = false;
  bool _isvegetarian = false;
  bool _isvegan = false;
  bool _isLactose = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selection',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                SwitchListTile(
                    tileColor: Colors.blueGrey,
                    value: _isglutten,
                    title: Text(
                      'Gluten free',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Only gluten free meals',
                      style: TextStyle(color: Colors.white),
                    ),
                    onChanged: (newValues) {
                      setState(() {
                        _isglutten = newValues;
                      });
                    }),
                SizedBox(
                  height: 10,
                ),
                SwitchListTile(
                    tileColor: Colors.blueGrey,
                    value: _isvegan,
                    title: Text(
                      'Vegan Only',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Only vegan  meals',
                      style: TextStyle(color: Colors.white),
                    ),
                    onChanged: (newValues) {
                      setState(() {
                        _isvegan = newValues;
                      });
                    }),
                SizedBox(
                  height: 10,
                ),
                SwitchListTile(
                    tileColor: Colors.blueGrey,
                    value: _isvegetarian,
                    title: Text(
                      'Vegetarian only',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Only vegetarian  meals',
                      style: TextStyle(color: Colors.white),
                    ),
                    onChanged: (newValues) {
                      setState(() {
                        _isvegetarian = newValues;
                      });
                    }),
                SizedBox(
                  height: 10,
                ),
                SwitchListTile(
                    tileColor: Colors.blueGrey,
                    value: _isLactose,
                    title: Text(
                      'Lactose free',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Only lactose free  meals',
                      style: TextStyle(color: Colors.white),
                    ),
                    onChanged: (newValues) {
                      setState(() {
                        _isLactose = newValues;
                      });
                    }),
              ],
            ))
          ],
        ));
  }
}
