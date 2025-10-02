import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleFloatingActionButton extends StatelessWidget {
  const GoogleFloatingActionButton({
    required this.onPressed,
    required this.child,
    super.key,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
  })  : _isExtended = false,
        _label = null,
        _icon = null;

  const GoogleFloatingActionButton.extended({
    required this.onPressed,
    required String label,
    super.key,
    IconData? icon,
    this.backgroundColor,
    this.elevation,
  })  : _isExtended = true,
        _label = label,
        _icon = icon,
        child = null,
        foregroundColor = null;

  final VoidCallback? onPressed;
  final Widget? child;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final bool _isExtended;
  final String? _label;
  final IconData? _icon;

  @override
  Widget build(BuildContext context) {
    if (_isExtended) {
      return FloatingActionButton.extended(
        onPressed: onPressed,
        backgroundColor: backgroundColor,
        elevation: elevation ?? 2,
        label: GoogleText(
          _label!,
          fontWeight: FontWeight.w500,
        ),
        icon: _icon != null ? GoogleIcon(_icon, size: 24) : null,
      );
    }

    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      child: child,
    );
  }
}
