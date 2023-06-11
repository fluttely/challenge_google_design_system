import 'package:flutter/material.dart' as material hide IconData;

class ElevatedButton extends material.ElevatedButton {
  ElevatedButton({
    super.key,
    required super.onPressed,
    required super.child,
    double? elevation,
  }) : super(
            style: material.ElevatedButton.styleFrom(
          elevation: elevation,
        ));
}
