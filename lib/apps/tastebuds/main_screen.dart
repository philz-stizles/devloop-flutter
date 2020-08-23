import 'package:devloop_flutter/apps/tastebuds/screens/categories_screen.dart';
import 'package:devloop_flutter/apps/tastebuds/screens/favorites_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasteBudsMainScreen extends StatelessWidget {
  static const String routeName = 'buyemall';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0, // Indicates what Ta to start from
      length: 2, 
      child: Scaffold(
      // A new Screen should return a Scaffold
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Taste Buds'),
        bottom: TabBar(tabs: <Widget>[
          Tab(icon: Icon(Icons.category), text: 'Categories',),
          Tab(icon: Icon(Icons.star), text: 'Favorites',)
        ]),
      ),
      body: TabBarView(children: [
        CategoriesScreen(),
        FavoritesScreen()
      ])
      // bottomNavigationBar: BottomNavigationBar(items: null),
    )
    );
  }
}
