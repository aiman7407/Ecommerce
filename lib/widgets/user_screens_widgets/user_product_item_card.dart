import 'package:ecom/models/product.dart';
import 'package:flutter/material.dart';

class UserProductItemCard extends StatelessWidget {

  final List<Product> products;
  final int productIndexInList;

  UserProductItemCard({this.products,this.productIndexInList,
   });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Stack(
        children: <Widget>[

          Positioned.fill(child: Image.network(
            products[productIndexInList].location,
            fit: BoxFit.fill,
          )),

          Positioned(
            bottom: 0,
            child: Opacity(
              opacity: 0.6,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(products[productIndexInList].name,style: TextStyle(fontSize:18,fontWeight: FontWeight.bold ),),
                    Text('\$'+products[productIndexInList].price,style: TextStyle(fontSize:14,fontWeight: FontWeight.bold ))

                  ],
                ),

              ),
            ),
          )


        ],
      ),
    );
  }
}