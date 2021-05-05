import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class CartCounter extends StatefulWidget {
  CartCounter({Key key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int noOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildSizedBox(
          icon: Icons.remove,
          press: () {
            if (noOfItems > 1) {
              setState(() {
                noOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            //if our item is less than 10 then it shows 01 02 lik that
            noOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildSizedBox(
          icon: Icons.add,
          press: () {
            setState(() {
              noOfItems++;
            });
          },
        )
      ],
    );
  }

  SizedBox buildSizedBox({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
