import 'package:flutter/material.dart';
import 'package:islootech_task/models/product_model.dart';


//Widget for the bottom rectangle container for the product 

class RectangleImageContainer extends StatefulWidget {
  Product product;
  RectangleImageContainer({required this.product});

  @override
  _RectangleImageContainerState createState() => _RectangleImageContainerState();
}

class _RectangleImageContainerState extends State<RectangleImageContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.07,
      width: size.width*0.185,
      decoration: const BoxDecoration(
       
        color: Colors.white70
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.network(
          widget.product.image,
          fit: BoxFit.fill,),
      ),
    );
  }
}