import 'package:calculadora_imc/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconContent extends StatelessWidget {
  final IconData iconContent;
  final String iconText;

  const IconContent(
      {Key? key, required this.iconContent, required this.iconText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconContent,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          iconText,
          style: kTextStyle,
        ),
      ],
    );
  }
}
