import 'package:flutter/material.dart';
import 'package:calculadora_imc/components/constants.dart';

class InputSlider extends StatelessWidget {
  final Widget inputSlider;

  const InputSlider({Key? key, required this.inputSlider}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.white,
        inactiveTrackColor: const Color(0xFF8D8E98),
        thumbColor: kGreenButton,
        overlayColor: const Color(0x2904724D),
        thumbShape: const RoundSliderThumbShape(
          enabledThumbRadius: 15,
        ),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 25),
      ),
      child: inputSlider,
    );
  }
}
