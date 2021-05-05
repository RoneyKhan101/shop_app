import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/add_cart.dart';
import 'package:shop_app/screens/details/components/cart_counter.dart';
import 'package:shop_app/screens/details/components/color_and_size.dart';
import 'package:shop_app/screens/details/components/counter_fav_btn.dart';
import 'package:shop_app/screens/details/components/description.dart';
import 'package:shop_app/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: size.height * 0.3,
                  ),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  // height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      )),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      Description(product: product),
                      SizedBox(height: kDefaultPaddin),
                      CounterWithFabBtn(),
                      SizedBox(height: kDefaultPaddin * 2),
                      AddCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
