import 'package:flutter/material.dart';

import '../card/icon_card.dart';
import '../card/reusable_card.dart';

// import 'package:bmi_calc_1/features/card/icon_card.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { man, woman }

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Widget? get onPresed => null;

  bool cardManPressed = false;
  bool cardWomanPressed = false;

  void toggleCardsGender({required Gender gender}) {
    debugPrint('---->${gender.name}');

    setState(() {
      // if (gender.name == 'man') {
      //   cardManPressed = !cardManPressed;
      //   cardWomanPressed = false;
      // } else if (gender.name == 'woman') {
      //   cardWomanPressed = !cardWomanPressed;
      //   cardManPressed = false;
      // }
      gender == Gender.man
          ? {cardManPressed = !cardManPressed, cardWomanPressed = false}
          : {cardWomanPressed = !cardWomanPressed, cardManPressed = false};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () => toggleCardsGender(gender: Gender.man),
                    cardPressed: cardManPressed,
                    cardChild: IconCard(icon: Icons.man, label: 'Man'),
                  ),
                ),

                Expanded(
                  child: ReusableCard(
                    onPress: () => toggleCardsGender(gender: Gender.woman),
                    cardPressed: cardWomanPressed,
                    cardChild: IconCard(icon: Icons.woman, label: 'Woman'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Weight',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Center(
                    child: Text(
                      '175 cm',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard()),
                Expanded(child: ReusableCard()),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.onPrimary,
            height: 80,
            child: Center(
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  'Calculate Your BMI',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      // child: Container(
      //         color: Theme.of(context).colorScheme.surfaceContainerLow,
      //       ),

      // floatingActionButton: FloatingActionButton(

      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
