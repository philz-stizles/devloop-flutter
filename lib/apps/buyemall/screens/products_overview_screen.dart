import 'package:devloop_flutter/apps/buyemall/models/product.dart';
import 'package:devloop_flutter/apps/buyemall/widgets/products_grid.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsOverviewScreen extends StatelessWidget {
  static const String routeName = 'buyemall';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // A new Screen should return a Scaffold
      appBar: AppBar(
        centerTitle: true,
        title: Text('Products Overview'),
      ),
      body: ProductsGrid(),
      // drawer: ,
      floatingActionButton: FloatingActionButton(onPressed: null),
    );
  }
}
