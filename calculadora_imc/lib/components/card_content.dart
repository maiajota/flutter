import 'package:calculadora_imc/components/constants.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final Widget cardChild;
  final Color cardColor;
  final Function()? onPressed;

  const CardContent(
      {Key? key,
      required this.cardChild,
      required this.cardColor,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
