import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          SizedBox(
            width: kDefaultPaddin,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Price\n", style: TextStyle(color: Colors.white)),
                TextSpan(
                    text: "\$${product.price}",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold))
              ])),
              SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(
                  child: Hero(
                tag: "${product.id}",
                child: Image.network(
                  product.image,
                  fit: BoxFit.fitWidth,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
