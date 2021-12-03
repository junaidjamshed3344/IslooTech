// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SelectionContainer extends StatefulWidget {
  late String text;
  SelectionContainer({required this.text});

  @override
  _SelectionContainerState createState() => _SelectionContainerState();
}

class _SelectionContainerState extends State<SelectionContainer> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: widget.text == 'All' ? size.width*0.2 : size.width*0.30,
      height: size.height*0.05,
      decoration: BoxDecoration(
        color: Color(widget.text == 'All' ? 0xFFFEB823 : 0xFFFFFFFF),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(widget.text,style: TextStyle(
          color: Color(widget.text == 'All' ? 0xFFFFFFFF : 0xFF000000),

        ),),
      ),
    );
  }
}