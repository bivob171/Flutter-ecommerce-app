import 'package:flutter/material.dart';
import 'package:commerceapp/constants.dart';


class ProductCategories extends StatefulWidget {
  @override
  _ProductCategoriesState createState() => _ProductCategoriesState();
}

class _ProductCategoriesState extends State<ProductCategories> {
  List<String> categories = ["All","Weddings Wear","Bags","Saree","Shoes","Kurties"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index) => buildText(index),
        ),
      ),

    );
  }

  Widget buildText(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],style: TextStyle(
                color: selectedIndex == index ? kTextColor : kTextLightColor,
                fontWeight: FontWeight.bold),),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 30,
              color: selectedIndex == index ? kTextColor : Colors.transparent,
            ),

          ],
        ),
      ),
    );
  }
}