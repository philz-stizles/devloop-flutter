import 'package:devloop_flutter/apps/buyemall/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductGridTile extends StatelessWidget {
  // final Product product;
  // ProductGridTile(this.product);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GestureDetector(
        child: GridTile(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
          footer: GridTileBar(
            leading: IconButton(
                icon: Icon(
                   (product.isFavorite) ? Icons.favorite : Icons.favorite_border,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () => product.toggleFavoriteStatus()),
            backgroundColor: Colors.black87,
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                onPressed: null),
          ),
        ),
        onTap: () {
          Navigator.of(context)
              .pushNamed('product-details', arguments: product.id);
        },
      ),
    );
  }
}
