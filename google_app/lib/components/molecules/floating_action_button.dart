import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' as widgets;
import 'package:google_app/google_app.dart';

class FloatingActionButton extends material.FloatingActionButton {
  const FloatingActionButton({
    super.key,
    required super.onPressed,
    required super.child,
  });

  const FloatingActionButton.extended({
    super.key,
    required void Function()? onPressed,
    required widgets.Text label,
    required Icon icon,
    widgets.Color? backgroundColor,
  }) : super.extended(
          onPressed: onPressed,
          label: label,
          icon: icon,
          backgroundColor: backgroundColor,
        );
}
