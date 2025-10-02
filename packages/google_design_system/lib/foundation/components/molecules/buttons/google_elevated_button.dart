import 'package:flutter/material.dart';

class GoogleElevatedButton extends StatelessWidget {
  const GoogleElevatedButton({
    required this.onPressed,
    required this.child,
    super.key,
    this.elevation,
    this.backgroundColor,
    this.foregroundColor,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final double? elevation;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
      ),
      child: child,
    );
  }
}
