import 'package:commerceapp/constants.dart';
import 'package:commerceapp/models/product.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 500,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.8),
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.12,
                left: kDefaultPadding,

            ),
            width: MediaQuery.of(context).size.width,
            //color: Colors.white,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(50) ,
                  topRight: Radius.circular(50)
              ),
              color: Colors.white
            ),
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Row(
                 // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('color',style: TextStyle(fontSize: 17,color:kTextColor),),
                          SizedBox(height: 5.0,),
                          Row(
                            children: [
                              PriceBullet(isSelectedColor: true,color: Colors.blue,),
                              PriceBullet(color: Colors.red,),
                              PriceBullet(color: Colors.yellow,),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: RichText(text: TextSpan(
                        children: [
                          TextSpan(text: 'Size\n',style: TextStyle(color: kTextColor)),
                          TextSpan(text: product.size.toString(),style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.black38,fontWeight: FontWeight.bold)),
                        ]
                      )
                      ),
                    ),
                  ],
                ),
                SizedBox(height: kDefaultPadding),
                Text(product.description,style: TextStyle(height: 1.5),),
                SizedBox(height: kDefaultPadding),
                Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: RaisedButton(
                    onPressed: () {},
                    color: product.color,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                          Text(
                            'Add to Cart',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Trendy Collection with Eye Catching Design',style: TextStyle(fontSize: 14,color: Colors.white),),
                Text(product.title,style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white),),
                Row(
                  children: [
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(text: 'price\n',style: TextStyle(fontSize: 18)),
                        TextSpan(text: '৳ ${product.price}',style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white)),
                      ]
                    )),
                    //Spacer(),
                    SizedBox(width: kDefaultPadding,height: kDefaultPadding + 10,),
                    Expanded(child: Hero(
                        tag: product.id,
                        child: Image.asset(product.image,fit: BoxFit.fill,)))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PriceBullet extends StatelessWidget {
  final Color color;
  final bool isSelectedColor;
  const PriceBullet({
    Key key,
    this.isSelectedColor = false,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      margin: EdgeInsets.all(2),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelectedColor == true ? Colors.black38 : Colors.transparent )
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color
          ))
    );
  }
}
