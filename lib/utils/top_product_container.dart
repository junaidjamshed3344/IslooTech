import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islootech_task/models/product_model.dart';

// Widget for the showing the Top Product 

class TopProductContainer extends StatefulWidget {
 Product product;
 TopProductContainer ({required this.product});

  @override
  _TopProductContainerState createState() => _TopProductContainerState();
}

class _TopProductContainerState extends State<TopProductContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.20,
      width: size.width*0.25,
     // Use of ClipRRect widget to bend the image corners round and to Fit the image inside container
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          widget.product.image,
          fit: BoxFit.fill,),

        ) ,
      
    );
  }
}