import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const ReusableCard({super.key});

  const ReusableCard({
    super.key,
    this.cardPressed = false,
    this.cardChild,
    this.onPress,
  });

  final bool cardPressed;
  final Widget? cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
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
      ),
    );
  }
}
