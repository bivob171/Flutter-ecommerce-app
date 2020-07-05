import 'package:flutter/material.dart';
import 'package:commerceapp/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:commerceapp/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: SvgPicture.asset("assets/icons/back.svg"),
            onPressed: (){}
            ),
        actions: [
          IconButton(
              icon: SvgPicture.asset("assets/icons/search.svg",color: kTextColor,),
              onPressed: (){}
              ),
          IconButton(
              icon: SvgPicture.asset("assets/icons/cart.svg",color: kTextColor,),
              onPressed: (){}
          )
        ],
      ),
      body: Body(),
    );
  }
}
