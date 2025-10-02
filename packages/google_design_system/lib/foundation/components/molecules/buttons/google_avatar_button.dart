import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleAvatarButton extends FloatingActionButton {
  GoogleAvatarButton({
    super.key,
  }) : super(
          backgroundColor: GoogleLightColors.canvasColor,
          shape: const CircleBorder(),
          elevation: 0,
          hoverElevation: 3,
          onPressed: () {},
          child: const CircleAvatar(
            backgroundColor: GoogleLightColors.canvasColor,
            backgroundImage: AssetImage(
              'assets/images/avatar_picture.png',
              package: 'google_design_system',
            ),
          ),
        );
}
