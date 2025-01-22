import 'package:flutter/material.dart' as material hide IconData;

class GoogleElevatedButton extends material.ElevatedButton {
  GoogleElevatedButton({
    required super.onPressed,
    required super.child,
    super.key,
    double? elevation,
  }) : super(
          style: material.ElevatedButton.styleFrom(
            elevation: elevation,
          ),
        );
}
