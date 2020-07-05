import 'package:commerceapp/models/product.dart';
import 'package:flutter/cupertino.dart';
import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product products;
  final Function press;

  const ItemCard({
    Key key,
    this.products,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              //height: 160,
              //width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                color: products.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(tag:products.id,child: Image.asset(products.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 4),
            child: Text(products.title,style: TextStyle(fontSize: 16,color: kTextLightColor),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Text('৳' + products.price.toString(),style: TextStyle(color: kTextColor),),
          ),
        ],
      ),
    );
  }
}