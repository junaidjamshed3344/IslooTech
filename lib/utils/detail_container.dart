import 'package:flutter/material.dart';
import 'package:islootech_task/models/product_model.dart';
import 'package:get/get.dart';
import 'package:islootech_task/screens/screen2.dart';


// Container for showing the details of the product 
// While clicking the arrow sign in this container can navigate to screen 2 

class DetailContainer extends StatefulWidget {
  Product product;
  DetailContainer({required this.product});

  @override
  _DetailContainerState createState() => _DetailContainerState();
}

class _DetailContainerState extends State<DetailContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(

      ),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: size.height*0.007),
                child: Container(
                  height: size.height*0.1,
                  width: size.width*0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0F0E3),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),

                        // For the Product Image 
                        child: Container(
                          width: size.width*0.2,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0),
                            ),
                            child: Image.network(
                            widget.product.image,
                            fit: BoxFit.fill,),
                            ),
                          ),
                      ),
                      // For the Product Image Container Ends here

                      // Container for the Product's price,title and Add to Job button
                      Container(
                        width: size.width*0.53,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: size.height*0.006,),
                            // Product Title
                             Text(widget.product.title,
                            style: const TextStyle(
                              fontSize: 8.0,
                            ),
                            ),
                             SizedBox(height: size.height*0.001,),
                             // Product Price
                             Text(widget.product.price.toString(),
                            style: const TextStyle(
                              color: Color(0xFFF3A600)
                            ),
                            ),
                            SizedBox(height: size.height*0.005,),

                            // Container for the Add to Job 
                            Container(
                              width: size.width*0.2,
                              height: size.height*0.04,
                              decoration:  BoxDecoration(
                                color: const Color(0xFFF3A600),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Center(child: Text('Add to Job',
                              style: TextStyle(
                                fontSize: 10.0
                              ),
                              ),
                              ),
                            ),
                          // Container for the Product's price,title and Add to Job button Ends here
                          ],
                        ),
                      ),
                      SizedBox(width: size.width*0.1,),

                      // Arrow Button for the navigation to the screen2
                      GestureDetector(
                        onTap: (){
                          Get.to(Screen2(
                          description: widget.product.description,
                          price: widget.product.price.toString(),
                          image: widget.product.image,),
                          );
                        },
                        child: Container(
                           
                         child: const Center(
                           child:Icon(
                             Icons.arrow_forward_ios_sharp,
                             size: 15.0,
                             color: Color(0xFFC4C4C3),
                           ),
                           ), 
                        ),
                      ),
                      // Arrow Button for the navigation to the screen2 Ends here
                    ],
                  ),

                ),
              )
            ],
          )
        ],
      ),
    );
}
}