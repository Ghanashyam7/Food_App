import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color ;
  final String text ;
  double size ;
  double height;
  SmallText({Key? key, this.color,
    required this.text,
    this.size = 12,
    this.height = 2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: Colors.black54,
        fontSize: size,
        height: height
      ),
    );
  }
}
