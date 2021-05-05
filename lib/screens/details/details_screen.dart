import 'package:flutter/material.dart';
import 'package:shop_app/main.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Image.network("assets/icons/back.svg"),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
      actions: [
        IconButton(
          icon: Image.network("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.network("assets/icons/cart.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}
