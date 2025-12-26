import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Widget? get onPresed => null;

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
                    cardHighlight: true,
                    cardChild: IconCard(icon: Icons.man, label: 'Man'),
                  ),
                ),

                Expanded(
                  child: ReusableCard(
                    cardChild: IconCard(icon: Icons.woman, label: 'Woman'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard()),
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

class IconCard extends StatelessWidget {
  const IconCard({required this.icon, required this.label, super.key});

  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80, color: Theme.of(context).colorScheme.primary),
        SizedBox(height: 15),
        Text(
          label ?? 'MALE',
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  // const ReusableCard({super.key});

  const ReusableCard({super.key, this.cardHighlight = false, this.cardChild});

  final bool cardHighlight;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        // color: Theme.of(context).colorScheme.primaryContainer,
        // color: Theme.of(context).colorScheme.surfaceContainerLow,
        color: cardHighlight
            ? Theme.of(context).colorScheme.surfaceContainerHigh
            : Theme.of(context).colorScheme.surfaceContainerLow,

        //
        borderRadius: BorderRadius.circular(15),
      ),
      child: cardChild,
    );
  }
}
