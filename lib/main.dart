import 'package:devloop_flutter/apps/fintracker.dart';
import 'package:devloop_flutter/apps/tastebuds/auth_screen.dart';
import 'package:devloop_flutter/providers/products_provider.dart';
import 'package:devloop_flutter/widgets/grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'apps/buyemall/screens/product_details_screen.dart';
import 'apps/buyemall/screens/products_overview_screen.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> _apps = [
    {'name': 'FinTracker', 'icon': Icons.attach_money, 'route': 'fintrack'},
    {'name': 'DevLearn', 'icon': Icons.school, 'route': 'devlearn'},
    {'name': 'BuyEmAll', 'icon': Icons.shop, 'route': 'buyemall'}, 
    {'name': 'TasteBuds', 'icon': Icons.fastfood, 'route': 'tastebuds'}
  ];

  Widget _buildMainScreenGrid(BuildContext contect) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Grid structure
            crossAxisCount: 2, // Number of columns
            childAspectRatio:
                2 / 2, // size ratio of each column width to height
            crossAxisSpacing: 10.0, // Spacing between columns
            mainAxisSpacing: 10.0 // Spacing between row s
            ),
        itemCount: _apps.length,
        itemBuilder: (context, index) {
          var app = _apps[index];
          return NavigatorGridItem(app['icon'], app['name'], app['route']);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Roboto',
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          'fintrack': (BuildContext cxt) => FinTrackerApp(),
          'buyemall': (ctx) => ProductsOverviewScreen(),
          'product-details': (ctx) => ProductDetailsScreen(),
          'tastebuds': (ctx) => TasteBudsAuthScreen(),
        },
        home: Scaffold(
          body: _buildMainScreenGrid(context),
        ),
      ),
    );
  }
}
