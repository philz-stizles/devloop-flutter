import 'package:devloop_flutter/apps/tastebuds/widgets/meal_list_item.dart';
import 'package:devloop_flutter/dummy_data.dart';
import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // RecipesScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> routeData = ModalRoute.of(context).settings.arguments;
    final categoryId = routeData['id'];
    final categoryTitle = routeData['title'];
    final meals = DUMMY_MEALS.where((element) {
      return element.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      // A new Screen should return a Scaffold
      appBar: AppBar(
        centerTitle: true,
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, i) => MealListItem(meals[i])
      ),
      floatingActionButton: FloatingActionButton(onPressed: null),
      // bottomNavigationBar: BottomNavigationBar(items: null),
    );
  }
}
