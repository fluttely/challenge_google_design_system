import 'package:flutter/widgets.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleIcon extends Icon {
  const GoogleIcon(
    super.icon, {
    super.key,
    double? size,
  }) : super(
          color: GoogleLightColors.iconColor,
          size: size ?? 20,
        );

  factory GoogleIcon.medium(IconData icon) => GoogleIcon(icon, size: 20);
  factory GoogleIcon.large(IconData icon) => GoogleIcon(icon, size: 24);
}
