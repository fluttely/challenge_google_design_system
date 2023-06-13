import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' hide Text, Icon;
import 'package:google_app/google_app.dart';

class FloatingActionButton extends material.FloatingActionButton {
  const FloatingActionButton({
    super.key,
    required super.onPressed,
    required super.child,
  });

  FloatingActionButton.extended({
    super.key,
    required void Function()? onPressed,
    required String label,
    IconData? icon,
    Color? backgroundColor,
    double? elevation,
  }) : super.extended(
          onPressed: onPressed,
          label: Text(
            label,
            fontWeight: FontWeight.w500,
          ),
          icon: icon != null ? Icon(icon) : null,
          backgroundColor: backgroundColor,
          elevation: elevation ?? 2,
        );
}
