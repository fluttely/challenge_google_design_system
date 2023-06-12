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
    required IconData icon,
    Color? backgroundColor,
  }) : super.extended(
          onPressed: onPressed,
          label: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          icon: Icon(icon),
          backgroundColor: backgroundColor,
          elevation: 2,
        );
}
