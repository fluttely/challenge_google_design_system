import 'package:flutter/material.dart';

class GoogleElevatedButton extends ElevatedButton {
  GoogleElevatedButton({
    required super.onPressed,
    required super.child,
    super.key,
    double? elevation,
  }) : super(
          style: ElevatedButton.styleFrom(
            elevation: elevation,
          ),
        );
}
