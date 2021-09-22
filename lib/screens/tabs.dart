import 'package:flutter/material.dart';
import 'package:myrecipes/screens/category_screen.dart';
import 'package:myrecipes/screens/favourites.dart';
import 'package:myrecipes/widgets/drawer.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List <Map<String, Widget>> _tabScreen = [
    {
      'tab': CategoryScreen(),
      'title': Text('Category')
    },
    {
      'tab': FavouritesScreen(),
      'title': Text('Favourites'),
    }
  ];
  int _selectedScreen = 0;

  void _selectScreen(int index){
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _tabScreen[_selectedScreen]['title'],
      ),
      drawer: MainDrawer(),
      body: _tabScreen[_selectedScreen]['tab'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        currentIndex: _selectedScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categories',
              backgroundColor: Theme.of(context).accentColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourites',
              backgroundColor: Theme.of(context).accentColor)
        ],
      ),
    );
  }
}
