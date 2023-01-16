// ignore_for_file: camel_case_types

import 'package:bmical/Data/constant.dart';
import 'package:flutter/material.dart';

class Action_button extends StatelessWidget {
  const Action_button({Key? key, required this.onpress, required this.icon})
      : super(key: key);
  final Function() onpress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kInActiveCardcolor,
      onPressed: onpress,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}