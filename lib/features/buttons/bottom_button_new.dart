import 'package:flutter/material.dart';

class BottomButtonNew extends StatelessWidget {
  const BottomButtonNew({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor, // ← neu
    this.textColor, // ← neu
    this.height = 80,
    this.elevation = 8, // ← Schatten
    this.borderRadius = 0, // ← abgerundete Ecken möglich
    this.isLoading = false, // ← Ladezustand
  });

  final String text;
  final VoidCallback?
  onPressed; // ← jetzt nullable (besser für disabled Zustand)
  final Color? backgroundColor;
  final Color? textColor;
  final double height;
  final double elevation;
  final double borderRadius;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultBg = theme.colorScheme.primary;
    final defaultText = theme.colorScheme.onPrimary;

    return Material(
      elevation: onPressed == null ? 0 : elevation,
      color: Colors.transparent,
      child: InkWell(
        // splashColor: Colors.white.withValues(alpha: 0.35),
        // highlightColor: Colors.white.withValues(alpha: 0.15),
        // borderRadius: BorderRadius.circular(12),
        onTap: isLoading ? null : onPressed,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: backgroundColor ?? defaultBg,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Center(
            child: isLoading
                ? SizedBox(
                    width: 28,
                    height: 28,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        textColor ?? defaultText,
                      ),
                    ),
                  )
                : Text(
                    text,
                    style: TextStyle(
                      fontSize: 22, // etwas moderater
                      fontWeight: FontWeight.w600, // etwas leichter als bold
                      color: textColor ?? defaultText,
                      letterSpacing: 0.4,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
