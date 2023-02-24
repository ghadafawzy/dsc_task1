import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  CustomButton({Key? key,required this.text,required this.width,
    required this.height,required this.color,
    required this.textColor,required this.size, @required this.onChange,}) : super(key: key);
  final String text;
  final double width;
  final double height;
  final Color color;
  final Color textColor;
  final double size;
  final Function? onChange;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){
      onChange!();
    },
        height: height,minWidth: width,
        color: color, textColor: textColor,

        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)) ,

        child: Text(text,style: TextStyle(fontSize: size),));
  }
}
