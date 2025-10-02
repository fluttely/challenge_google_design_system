import 'package:flutter/material.dart';

class GoogleIconButton extends StatelessWidget {
  const GoogleIconButton({
    required this.onPressed,
    required this.icon,
    super.key,
    this.iconSize,
    this.color,
    this.tooltip,
  });

  final VoidCallback? onPressed;
  final Widget icon;
  final double? iconSize;
  final Color? color;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      iconSize: iconSize,
      color: color,
      tooltip: tooltip,
    );
  }
}
