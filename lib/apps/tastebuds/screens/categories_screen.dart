import 'package:devloop_flutter/apps/tastebuds/widgets/categories_grid_item.dart';
import 'package:devloop_flutter/dummy_data.dart';
import 'package:flutter/cupertino.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //Grid structure
        maxCrossAxisExtent: 200, // Number of columns
        childAspectRatio: 3 / 2, // size ratio of each column width to height
        crossAxisSpacing: 10.0, // Spacing between columns
        mainAxisSpacing: 10.0 // Spacing between row s
      ),
      children: DUMMY_CATEGORIES.map((e) { 
        return CategoriesGridItem(e.id, e.title, e.color);
      }).toList()
    );
  }
}
