import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key,required this.text,required this.icon,
    required this.type,  this.icon2,this.suffixPressed, required this.isPassword,
    required this.mycontroller}) : super(key: key);

  TextInputType type;
  String text;
  Icon icon;
  bool isPassword=false;
  IconData ?icon2;
  VoidCallback? suffixPressed;
  TextEditingController? mycontroller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,
      keyboardType:type ,
      obscureText: isPassword,
      validator: (value) {
        if (value!.isNotEmpty) {
          return null;
        } else {
          return '$text Can Not Be Empty';
        }
      },
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(fontSize: 20,color: Colors.deepPurple),
        prefixIcon: icon,
        suffixIcon: IconButton(onPressed: suffixPressed, icon: Icon(icon2)),
        enabledBorder: const OutlineInputBorder( borderSide: BorderSide(width:1,color: Colors.deepPurple),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(width:1,color:Colors.deepPurple ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
    );
  }
}
