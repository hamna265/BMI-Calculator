import 'package:bmical/Data/constant.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Buttom_Button extends StatelessWidget {
  const Buttom_Button({
    Key? key,
    required this.buttontext, required this.onpress,
  }) : super(key: key);
  final String buttontext;
  final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        // ignore: sort_child_properties_last
        child: Center(
            child: Text(
          buttontext,
          style: Kbottombutton,
        )),
        margin: const  EdgeInsets.all(20),
        width: double.infinity,
        height: kBottomcontainerheight,
        decoration: BoxDecoration(
            color: kBottomcolor, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}