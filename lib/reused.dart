import 'package:flutter/material.dart';

class ReusedCard extends StatelessWidget {
  const ReusedCard({
    Key? key,
    required this.colour,
    required this.cardchild, required this.onPress,
  }) : super(key: key);

  final Color colour;
  final Widget cardchild;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child: cardchild,
      ),
    );
  }
}