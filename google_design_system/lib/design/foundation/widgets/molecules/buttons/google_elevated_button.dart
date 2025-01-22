import 'package:flutter/material.dart' as material hide IconData;

class GoogleElevatedButton extends material.ElevatedButton {
  GoogleElevatedButton({
    super.key,
    required super.onPressed,
    required super.child,
    double? elevation,
  }) : super(
            style: material.ElevatedButton.styleFrom(
          elevation: elevation,
        ));
}
