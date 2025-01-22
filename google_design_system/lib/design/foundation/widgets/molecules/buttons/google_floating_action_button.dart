import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart' hide Icon, Text hide IconData;
import 'package:google_design_system/google_design_system.dart';

class GoogleFloatingActionButton extends material.FloatingActionButton {
  const GoogleFloatingActionButton({
    required super.onPressed,
    required super.child,
    super.key,
  });

  GoogleFloatingActionButton.extended({
    required super.onPressed,
    required String label,
    super.key,
    material.IconData? icon,
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
