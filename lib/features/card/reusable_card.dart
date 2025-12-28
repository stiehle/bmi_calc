import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const ReusableCard({super.key});

  const ReusableCard({super.key, this.cardPressed = false, this.cardChild});

  final bool cardPressed;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        // color: Theme.of(context).colorScheme.primaryContainer,
        // color: Theme.of(context).colorScheme.surfaceContainerLow,
        color: cardPressed
            ? Theme.of(context).colorScheme.surfaceContainerLowest
            : Theme.of(context).colorScheme.surfaceContainerLow,

        //
        borderRadius: BorderRadius.circular(15),
      ),
      child: cardChild,
    );
  }
}
