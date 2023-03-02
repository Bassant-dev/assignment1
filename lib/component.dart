import 'package:flutter/material.dart';

void navigateto (context,widget)=>Navigator.push(context, MaterialPageRoute(builder: (context) => widget),);
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,

  required String?Function(String?)? validate,
  void Function(String)? onsubmit,
  required String label,
  required IconData prifex,
  void Function()? ontap,
  void Function(String)? onChange,
  bool isclickable=true,
  IconData? suffix,
  bool isPassword=false,
  void Function()? suffixpressed,


}
    ) =>TextFormField(

  onTap:ontap ,
  enabled: isclickable,
  onChanged : onChange,

  obscureText:isPassword,
  controller: controller,
  validator: validate,
  keyboardType: type,
  onFieldSubmitted: onsubmit,

  decoration: InputDecoration(
    fillColor: Colors.grey.shade100,
    filled: true,
    border: OutlineInputBorder(

      borderRadius: BorderRadius.circular(20),
      // borderSide: BorderSide(
      //   color: Colors.black,
      // ),focusedBorder: OutlineInputBorder(
      //     //   borderRadius: BorderRadius.circular(20)),
      //     //   // borderSide: BorderSide(
      //     //   //   color: Colors.black,
      //     //   // )),
    ),
    //
    labelText: (label),
    prefixIcon:Icon(prifex),
    suffixIcon: suffix !=null ? IconButton(

        onPressed:suffixpressed
        ,icon: Icon(suffix)) :null,
    // ignore: prefer_const_constructors

    // border: OutlineInputBorder(
    //
    //   borderRadius: BorderRadius.circular(20)
    // ),


  ),
);

