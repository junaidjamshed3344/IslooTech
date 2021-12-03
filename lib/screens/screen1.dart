import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islootech_task/controllers/product_controller.dart';
import 'package:islootech_task/utils/bottom_container.dart';
import 'package:islootech_task/utils/detail_container.dart';
import 'package:islootech_task/utils/rectangle_image_container.dart';
import 'package:islootech_task/utils/selection_Container.dart';
import 'package:islootech_task/utils/top_product_container.dart';

class Screen1 extends StatefulWidget {
  const Screen1({ Key? key }) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child:  Obx(() {
        // Check if the data has been received through api or not 
        if(productController.isLoading.value)
        // While the data is loading form the server show the progress indicator to the user
        return Center(child: CircularProgressIndicator());
        return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Customize Appbar Containter
          Container(
            height: size.height*0.17,
            decoration: const BoxDecoration(
              color: Color(0xFFF3A600),
            ),
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left:size.width*0.42,top: size.height*0.01),
                  child: Row(
               crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       const  Text('Listings',
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 18.0,
                         fontWeight: FontWeight.bold),
                         ),
                      SizedBox(width: size.width*0.22,),
                      // Search Button in the app bar 
                      IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white,) )
        
                    ],
                  ),
                ),
                SizedBox(height: size.height*0.03,),
                Padding(
                  padding: EdgeInsets.only(left: size.width*0.08),
                  child: Row(
                    // Container for the three options available for the navigaiton
                    children: [
                     SelectionContainer(text: 'All',),
                     SizedBox(width: size.width*0.02,),
                     SelectionContainer(text: 'Cranes',),
                     SizedBox(width: size.width*0.02,),
                     SelectionContainer(text: 'Trailors',),
                     SizedBox(width: size.width*0.02,),
                    ],
                  ),
                ), 
              ],
            ),
          ),
          // AppBar Container end here

          // Container for the remaining part of the screen
          Container(
            height: size.height*0.7,

            // Useage of list view because all the data is not able to be shown on the static screen
            child: ListView(
              children: [
                Padding(
            padding:EdgeInsets.symmetric(horizontal: size.width*0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Containers for the showing the Product image, it's title,price and Add to Job option and arrow button ">" for the navigation to the screen 2 
                DetailContainer(product: productController.allproducts[0],),
                DetailContainer(product: productController.allproducts[1],),
                DetailContainer(product: productController.allproducts[2],),
                DetailContainer(product: productController.allproducts[3],),
                // Container for the product details end here

                const  Padding(
                  padding: EdgeInsets.only(top: 4.0,bottom: 4.0),
                  child: Text(
                    'Top Product',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                Row(
                  children:  [

                    // Container for the Top Product 
                    TopProductContainer(product: productController.allproducts[0]),
                    SizedBox(width: size.width*0.07,),
                    TopProductContainer(product: productController.allproducts[1]),
                    SizedBox(width: size.width*0.07,),
                    TopProductContainer(product: productController.allproducts[2],
                    ),
                    // Container for the Top Product Ends here
                  ],
              
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4.0,bottom: 4.0),
                  child: Text('Lorem Ipsum dolor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Row(
                  children: [
                    // Containers for the bottom rectangle shape box for showing product

                    RectangleImageContainer(product: productController.allproducts[0],),
                    SizedBox(width: size.width*0.05,),
                    RectangleImageContainer(product: productController.allproducts[1],),
                    SizedBox(width: size.width*0.05,),
                    RectangleImageContainer(product: productController.allproducts[2],),
                    SizedBox(width: size.width*0.05,),
                    RectangleImageContainer(product: productController.allproducts[3],),

                    // Containers for the bottom rectangle shape box for showing product Ends here
                    
                  ],
                ),
              ],
            ),
         ),
              ],
            ),
          ),
          
          const BottomContainer(),
        ],
      );
      }),

    );
  }
}