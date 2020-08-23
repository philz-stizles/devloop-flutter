import 'package:devloop_flutter/providers/products_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String routeName = '/product-details';

  @override
  Widget build(BuildContext context) {
    final id =  ModalRoute.of(context).settings.arguments as String;
    final product = Provider.of<ProductsProvider>(
      context, 
      listen: false).findById(id);

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(product.title)
          ],
        ),
      ),
    );
  }
}
