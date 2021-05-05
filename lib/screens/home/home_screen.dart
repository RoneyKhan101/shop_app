import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Image.network("assets/icons/back.svg"),
        onPressed: () {},
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
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
