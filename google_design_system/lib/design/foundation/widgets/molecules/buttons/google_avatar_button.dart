import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' as widgets;
import 'package:google_design_system/google_design_system.dart';

class GoogleAvatarButton extends material.FloatingActionButton {
  GoogleAvatarButton({
    super.key,
  }) : super(
          backgroundColor: GoogleLightColors.canvasColor,
          shape: const widgets.CircleBorder(),
          elevation: 0,
          hoverElevation: 3,
          onPressed: () {},
          child: const material.CircleAvatar(
            backgroundColor: GoogleLightColors.canvasColor,
            backgroundImage: widgets.AssetImage(
              'assets/images/avatar_picture.png',
            ),
          ),
        );
}
