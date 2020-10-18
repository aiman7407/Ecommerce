import 'package:ecom/models/product.dart';
import 'package:ecom/screens/user_screens/product_info_screen.dart';
import 'package:ecom/src/used_functions.dart';
import 'package:ecom/widgets/admin_panel_widgets/admin_product_item_card.dart';
import 'package:ecom/widgets/user_screens_widgets/user_product_item_card.dart';
import 'package:flutter/material.dart';



Widget productView(String selectedCategory,List<Product>allProducts) {


  List<Product> products=[];
  products=getProductsByCategory(selectedCategory,allProducts);

  return   GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
      ),
      itemCount: products.length ,
      itemBuilder: (context,index){
        return
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, ProductInfoScreen.id,arguments: products[index]);
            },
            child: UserProductItemCard(products: products,
              productIndexInList: index,

            ),
          )



        ; });

}
