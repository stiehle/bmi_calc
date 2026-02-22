// import 'package:bmi_calc_1/features/buttons/bottom_button.dart';
import 'package:bmi_calc_1/features/card/reusable_card.dart';
import 'package:flutter/material.dart';

import '../buttons/bottom_button_new.dart';

class ResultPage extends StatelessWidget {
  // const ResultPage({super.key});

  ResultPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });

  String bmiResult = '24.5';
  String resultText = 'Normal';
  String interpretation = 'You have a normal body weight. Good job!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI-Calculator Result')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Normal',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Text(
                    '24.5 ',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Text(
                    'You have a normal body weight. Good job!',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
          ),
          BottomButtonNew(
            text: "RE-CALCULATE",
            onPressed: () {
              // Navigator.pushNamed(context, '/calculate');
              Navigator.pop(context);
            },
          ),

          // Text(
          //   'Your BMI is',
          //   style: Theme.of(context).textTheme.headlineMedium,
          // ),
          // Center(
          //   child: Text(
          //     '24.5',
          //     style: Theme.of(context).textTheme.displayLarge,
          //   ),
          // ),
        ],
      ),
    );
  }
}
