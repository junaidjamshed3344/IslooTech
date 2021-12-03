import 'package:flutter/material.dart';


// Navigation Bar Widget 
class NavigationContainer extends StatelessWidget {
  int number;
  NavigationContainer({required this.number});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.005,
      width: size.width *0.1,
      decoration: BoxDecoration(
        color: Color(number==3 ? 0xFFF3A600 : 0xFFDCDCD9 ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      );
  }
}