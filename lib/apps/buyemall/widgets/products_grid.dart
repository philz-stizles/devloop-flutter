import 'package:devloop_flutter/apps/buyemall/widgets/product_grid_tile.dart';
import 'package:devloop_flutter/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    final products = productsProvider.items;

    return GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Grid structure
            crossAxisCount: 2, // Number of columns
            childAspectRatio:
                2 / 2, // size ratio of each column width to height
            crossAxisSpacing: 10.0, // Spacing between columns
            mainAxisSpacing: 10.0 // Spacing between row s
            ),
        itemCount: products.length, // Number of items to build
        itemBuilder: (ctx, i) => ChangeNotifierProvider(
              create: (context) {
                return products[i];
              },
              child: ProductGridTile(),
              // child: ProductGridTile(products[i]),
            ));
  }
}
