import 'package:commerceapp/models/product.dart';
import 'package:commerceapp/screens/details/components/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:commerceapp/constants.dart';
import 'categories.dart';
import 'itemcard.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top:kDefaultPadding,left: kDefaultPadding,bottom: kDefaultPadding/2),
          child: Text('Women\'s Fashion',
              style: Theme.of(context).textTheme.headline5.copyWith(color: kTextColor)),
        ),
        ProductCategories(),
        Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.70,
                    crossAxisSpacing: kDefaultPadding,
                  ),
                itemBuilder: (context,index) => ItemCard(
                  products: products[index],
                  press: () => Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>
                      DetailsScreen(products: products[index],))),),
              ),
            ),
        ),
      ],
    );
  }
}





