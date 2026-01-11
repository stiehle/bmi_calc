import 'package:flutter/material.dart';

import '../buttons/bottom_button.dart';
import '../card/icon_card.dart';
import '../card/reusable_card.dart';
import '../buttons/bottom_button_new.dart';

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
  double sliderHeight = 175;
  int weight = 75;
  int age = 45;

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

  void onChangedHight(double value) {
    setState(() {
      sliderHeight = value;
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
                  Text(
                    'Height',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        sliderHeight.round().toString(),
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Text(
                        ' cm',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
                    child: SliderTheme(
                      data: SliderThemeData(
                        thumbColor: Colors.red,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 18.0,
                        ),
                        overlayShape: const RoundSliderOverlayShape(
                          overlayRadius: 30.0,
                        ),
                        // activeTrackColor: Colors.white,
                        // inactiveTrackColor: Colors.grey,
                        overlayColor: Theme.of(
                          context,
                        ).colorScheme.primary.withAlpha(80),
                      ),
                      child: Slider(
                        value: sliderHeight,
                        onChanged: onChangedHight,
                        min: 100,
                        max: 250,
                        // activeColor: Theme.of(context).colorScheme.inversePrimary,
                        // inactiveColor: Theme.of(
                        //   context,
                        // ).colorScheme.inverseSurface,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          weight.toString(),
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            const SizedBox(width: 20),
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            // FloatingActionButton(
                            //   shape: CircleBorder(
                            //     side: BorderSide(
                            //       color: Theme.of(
                            //         context,
                            //       ).colorScheme.onSurface,
                            //       width: 2.0,
                            //     ),
                            //   ),
                            //   onPressed: () {
                            //     setState(() {
                            //       weight++;
                            //     });
                            //   },
                            //   child: const Icon(Icons.add),
                            // ),
                            // const SizedBox(width: 20),
                            // FloatingActionButton(
                            //   shape: CircleBorder(
                            //     side: BorderSide(
                            //       color: Theme.of(
                            //         context,
                            //       ).colorScheme.onSurface,
                            //       width: 2.0,
                            //     ),
                            //   ),
                            //   onPressed: () {
                            //     setState(() {
                            //       weight--;
                            //     });
                            //   },
                            //   child: const Icon(Icons.remove),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          age.toString(),
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            const SizedBox(width: 20),
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            text: 'Calculate Your BMI',
            onPressed: () {
              Navigator.pushNamed(context, '/calculate');
            },
          ),
          BottomButtonNew(
            text: 'Calculate Your BMI',
            onPressed: () {
              Navigator.pushNamed(context, '/calculate');
            },
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

// class BottomButton extends StatelessWidget {
//   const BottomButton({super.key, required this.text, required this.onPressed});

//   final String text;
//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Theme.of(context).colorScheme.onPrimary,
//       height: 80,
//       child: Center(
//         child: GestureDetector(
//           onTap: () {
//             // Navigator.pushNamed(context, '/calculate');
//             onPressed();
//           },
//           child: Text(
//             // 'Calculate Your BMI',
//             text,
//             style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//               color: Theme.of(context).colorScheme.primary,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      // elevation: 6.0,
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      // shape: const CircleBorder(),
      shape: CircleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.onSurface,
          width: 2.0,
        ),
      ),

      fillColor: Theme.of(context).colorScheme.primaryContainer,
      child: Icon(icon, fontWeight: FontWeight.bold),
    );
  }
}
