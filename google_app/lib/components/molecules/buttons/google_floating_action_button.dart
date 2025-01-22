import 'package:flutter/material.dart' as material ;
import 'package:flutter/widgets.dart' hide Text, Icon hide IconData;
import 'package:google_app/google_app.dart';

class GoogleFloatingActionButton extends material.FloatingActionButton {
  const GoogleFloatingActionButton({
    super.key,
    required super.onPressed,
    required super.child,
  });

  GoogleFloatingActionButton.extended({
    super.key,
    required void Function()? onPressed,
    required String label,
    material.IconData? icon,
    Color? backgroundColor,
    double? elevation,
  }) : super.extended(
          onPressed: onPressed,
          label: GoogleText(
            label,
            fontWeight: FontWeight.w500,
          ),
          icon: icon != null ? GoogleIcon(icon,  size: 24) : null,
          backgroundColor: backgroundColor,
          elevation: elevation ?? 2,
        );
}
