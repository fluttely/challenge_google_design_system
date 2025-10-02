import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleAvatarButton extends StatelessWidget {
  const GoogleAvatarButton({
    super.key,
    this.onPressed,
    this.backgroundColor,
    this.elevation,
    this.hoverElevation,
  });

  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final double? elevation;
  final double? hoverElevation;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor ?? GoogleLightColors.canvasColor,
      shape: const CircleBorder(),
      elevation: elevation ?? 0,
      hoverElevation: hoverElevation ?? 3,
      onPressed: onPressed ?? () {},
      child: const CircleAvatar(
        backgroundColor: GoogleLightColors.canvasColor,
        backgroundImage: AssetImage(
          'assets/images/avatar_picture.png',
          package: 'google_design_system',
        ),
      ),
    );
  }
}
