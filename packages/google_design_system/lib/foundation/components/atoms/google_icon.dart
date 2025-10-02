import 'package:flutter/widgets.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleIcon extends StatelessWidget {
  const GoogleIcon(
    this.icon, {
    super.key,
    this.size,
    this.color,
  });

  factory GoogleIcon.medium(IconData icon) => GoogleIcon(icon, size: 20);
  factory GoogleIcon.large(IconData icon) => GoogleIcon(icon, size: 24);

  final IconData icon;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color ?? GoogleLightColors.iconColor,
      size: size ?? 20,
    );
  }
}
