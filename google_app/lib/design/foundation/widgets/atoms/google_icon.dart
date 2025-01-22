import 'package:flutter/widgets.dart' as widgets;
import 'package:google_app/google_app.dart';

class GoogleIcon extends widgets.Icon {
  const GoogleIcon(
    super.icon, {
    super.key,
    double? size,
  }) : super(
          color: GoogleLightColors.iconColor,
          size: size ?? 20,
        );

  factory GoogleIcon.medium(widgets.IconData icon) =>
      GoogleIcon(icon, size: 20);
  factory GoogleIcon.large(widgets.IconData icon) => GoogleIcon(icon, size: 24);
}
