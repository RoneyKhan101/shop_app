import 'package:flutter/material.dart';
import 'package:shop_app/screens/details/components/cart_counter.dart';

class CounterWithFabBtn extends StatelessWidget {
  const CounterWithFabBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(4),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: Image.network("assets/icons/heart.png"),
        )
      ],
    );
  }
}
