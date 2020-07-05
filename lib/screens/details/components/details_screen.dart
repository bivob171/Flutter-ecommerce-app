import 'package:commerceapp/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'body.dart';
import '../../../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product products;
  const DetailsScreen({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: products.color,
      appBar: AppBar(
        backgroundColor: products.color,
        leading: IconButton(icon: SvgPicture.asset("assets/icons/back.svg",color: Colors.white,),color: Colors.white,onPressed: (){
          Navigator.pop(context);
        }),
        elevation: 0,
        actions: [
          IconButton(icon: SvgPicture.asset("assets/icons/search.svg",color:  Colors.white,), onPressed: null),
          IconButton(icon: SvgPicture.asset("assets/icons/add_to_cart.svg",color:  Colors.white,), onPressed: null),
        ],
      ),
      body: Body(product: products,),
    );
  }
}
