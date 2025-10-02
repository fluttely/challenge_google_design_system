import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleFloatingActionButton extends FloatingActionButton {
  const GoogleFloatingActionButton({
    required super.onPressed,
    required super.child,
    super.key,
  });

  GoogleFloatingActionButton.extended({
    required super.onPressed,
    required String label,
    super.key,
    IconData? icon,
    super.backgroundColor,
    double? elevation,
  }) : super.extended(
          label: GoogleText(
            label,
            fontWeight: FontWeight.w500,
          ),
          icon: icon != null ? GoogleIcon(icon, size: 24) : null,
          elevation: elevation ?? 2,
        );
}
