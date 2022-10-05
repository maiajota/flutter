import 'package:calculadora_imc/components/calculator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:calculadora_imc/components/icon_content.dart';
import 'package:calculadora_imc/components/input_slider.dart';
import 'package:calculadora_imc/components/card_content.dart';
import 'package:calculadora_imc/components/constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}
//!VARIABLES
Gender? selectedGender;
int height = 170;
int weight = 60;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('CALCULADORA IMC'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  //!MALE CARD
                  child: CardContent(
                    onPressed: () {
                      //*WILL CHANGE THE COLOR OF THE CARD
                      setState(() => selectedGender = Gender.male);
                    },
                    cardColor: selectedGender == Gender.male
                        ? kActivateButtonColor
                        : kInactivateButtonColor,
                    cardChild: const IconContent(
                        iconContent: FontAwesomeIcons.mars, iconText: 'HOMEM'),
                  ),
                ),
                Expanded(
                  //!FEMALE CARD
                  child: CardContent(
                    onPressed: () {
                      //*WILL CHANGE THE COLOR OF THE CARD
                      setState(() => selectedGender = Gender.female);
                    },
                    cardColor: selectedGender == Gender.female
                        ? kActivateButtonColor
                        : kInactivateButtonColor,
                    cardChild: const IconContent(
                        iconContent: FontAwesomeIcons.venus,
                        iconText: 'MULHER'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            //!HEIGHT SLIDER
            child: CardContent(
              cardColor: kActivateButtonColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ALTURA',
                    style: kTextStyle,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kSliderNumberTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: kTextStyle,
                      )
                    ],
                  ),
                  InputSlider(
                    inputSlider: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newValue) => setState(
                        () {
                          height = newValue.toInt();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            //!WEIGHT SLIDER
            child: Row(
              children: [
                Expanded(
                  child: CardContent(
                    cardColor: kActivateButtonColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'PESO',
                          style: kTextStyle,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: kSliderNumberTextStyle,
                            ),
                            const Text(
                              'kg',
                              style: kTextStyle,
                            ),
                          ],
                        ),
                        InputSlider(
                          inputSlider: Slider(
                            value: weight.toDouble(),
                            min: 40,
                            max: 200,
                            onChanged: (double newValue) => setState(
                              () {
                                weight = newValue.toInt();
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Calculator calc = Calculator(
                  weight: weight, height: height); //*INITIALIZE FUNCTION
              Alert(
                  //*ALERT
                  style: AlertStyle(
                    backgroundColor: kActivateButtonColor,
                    alertBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: kActivateButtonColor),
                    ),
                    titleStyle: const TextStyle(fontSize: 50),
                    descStyle: const TextStyle(fontSize: 25),
                  ),
                  context: context,
                  title: calc.calculateIMC(),
                  desc: calc.getResult(),
                  buttons: [
                    DialogButton(
                        //*ALERT BUTTON
                        color: kGreenButton,
                        child: const Text(
                          'Voltar',
                          style: kAlertButtonTextStyle,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ]).show();
            },
            //!CALCULATOR BUTTON
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(bottom: 20),
              width: double.infinity,
              height: 80,
              color: kGreenButton,
              child: const Center(
                child: Text(
                  'CALCULAR',
                  style: kButtonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
