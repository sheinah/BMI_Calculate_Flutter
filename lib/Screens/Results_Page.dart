import 'package:flutter/material.dart';
import '../Components/BottomContainer_Button.dart';
import '../Components/Reusable_Bg.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  final String resultText;
  final String bmi;
  final String advise;
  final Color textColor;

  const ResultPage(
      {super.key, required this.textColor,
      required this.resultText,
      required this.bmi,
      required this.advise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: const Text(
                'Your Result',
                style: ktitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableBg(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmi,
                    style: kBMITextStyle,
                  ),
                  const Text(
                    'Normal BMI range:',
                    style: klabelTextStyle,
                  ),
                  const Text(
                    '18.5 - 25 kg/m2',
                    style: kBodyTextStyle,
                  ),
                  Text(
                    advise,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    constraints: const BoxConstraints.tightFor(
                      width: 200.0,
                      height: 56.0,
                    ),
                    fillColor: const Color(0xFF4C4F5E),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Text(
                      'SAVE RESULT',
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
              text: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
