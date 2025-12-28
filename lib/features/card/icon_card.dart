import 'package:flutter/material.dart';

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
          label ?? '----',
          style: Theme.of(context).textTheme.headlineMedium,
          // fontSize: 18,
          // color: Theme.of(context).colorScheme.primary,
        ),
      ],
    );
  }
}
