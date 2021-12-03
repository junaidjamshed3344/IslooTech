import 'package:flutter/material.dart';
import 'package:islootech_task/utils/navigation_container.dart';


// Screen 2 
class Screen2 extends StatefulWidget {

  // Receive these details from Screen1, when user press arrow button 
  String image;
  String description;
  String price;
  Screen2({required this.description,required this.price,required this.image});

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Starting Container for the Product' image 
            Container(
              width: size.width*1,
              height: size.height*0.6,
              child: ClipRRect(
                child: Image.network(
                  widget.image,
                  fit: BoxFit.fill,),
              ),
            ),
      
            // Starting Container for the Product' image Ends here
            SizedBox(height: size.height*0.02,),
      
            // Container for the remaining details of Product Which includes Product price, and Description
            Container(
              height: size.height*0.2,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Price 
                 Text(widget.price,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
      
            ),
            ),
            // Product Price Widgets End here
            SizedBox(height: size.height*0.01,),
            const Text('Shoping made easy',
            style: TextStyle(
                color: Color(0xFFF3A600),
            ),
            ),
            SizedBox(height: size.height*0.01,),
            // Product Description 
             Text(widget.description),
                  ],
                ),
              ),
            ),

             // Container for the remaining details of Product Ends Here
            SizedBox(height: size.height*0.01,),
      
            // Widget for the Add to Job Button
            Padding(
              padding: EdgeInsets.only(left: size.width*0.25,right: size.width*0.2),
              child: Container(
                width: size.width*0.5,
                height: size.height*0.05,
                decoration:  BoxDecoration(
                  color: const Color(0xFFF3A600),
                  borderRadius: BorderRadius.circular(16.0)
                ),
                child:const Center(
                  child: Text('Add to Job',
                  style: TextStyle(
                    color: Colors.white           
                  ),
                  ),
                ),
              ),
            ),
            // Widget for the Add to Job Button Ends here
            SizedBox(height: size.height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Containers for the Bottom navigation bars 
                NavigationContainer(number: 1,),
                SizedBox(width: size.width*0.03,),
                NavigationContainer(number: 2,),
                SizedBox(width: size.width*0.03,),
                NavigationContainer(number: 3,),
              ],
            ),
            
      
        ],
        ),
      ), 
      );
  }
}

