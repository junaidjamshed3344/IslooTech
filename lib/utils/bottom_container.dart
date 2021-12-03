import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.0945,
      width: size.width*1,
      decoration:  BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomizeColumn(title: 'Profile',icon: Icons.person,),
          CustomizeColumn(title: 'Home',icon: Icons.home,),
          CustomizeColumn(title: 'Jobs',icon: Icons.production_quantity_limits,),
        ],
      ),
    );
  }
}

class CustomizeColumn extends StatelessWidget {
  String title;
  IconData icon;
  CustomizeColumn({required this.title,required this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,color: title == 'Home' ? const Color(0xFFF3A600) : Colors.white,),
        Text(title,
        style:  TextStyle(
          color: title == 'Home' ? const Color(0xFFF3A600) : Colors.white,
        ),
        ),
      ],
    );
  }
}