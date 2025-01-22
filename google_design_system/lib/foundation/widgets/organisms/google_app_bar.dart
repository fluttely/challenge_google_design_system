import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' as widgets;
import 'package:google_design_system/google_design_system.dart';

class GoogleAppBar extends material.AppBar {
  GoogleAppBar({
    required widgets.Widget image,
    required String title,
    required String barHintText,
    super.key,
  }) : super(
          toolbarHeight: 64,
          backgroundColor: GoogleLightColors.canvasColor,
          leadingWidth: 216,
          titleSpacing: 0,
          leading: widgets.Row(
            children: [
              const widgets.SizedBox(width: 16),
              image,
              const widgets.SizedBox(width: 8),
              GoogleText.titleLarge(title),
            ],
          ),
          title: widgets.Container(
            height: 48,
            margin: const widgets.EdgeInsets.only(
              left: 14,
            ),
            child: material.SearchAnchor.bar(
              viewElevation: 0,
              barElevation: widgets.WidgetStateProperty.all(0),
              barBackgroundColor: widgets.WidgetStateProperty.all(
                GoogleLightColors.searchAnchorBarColor,
              ),
              barHintText: barHintText,
              viewBackgroundColor: GoogleLightColors.bodyColor,
              suggestionsBuilder: (context, controller) {
                return List.generate(
                  6,
                  (index) => GoogleText(index.toString()),
                );
              },
            ),
          ),
          actions: [
            const widgets.SizedBox(width: 4),
            GoogleIconButton(
              icon: const GoogleIcon(
                GoogleIcons.help_outline_outlined,
                size: 26,
              ),
              onPressed: () {},
            ),
            const widgets.SizedBox(width: 4),
            GoogleIconButton(
              icon: const GoogleIcon(
                GoogleIcons.settings_outlined,
                size: 26,
              ),
              onPressed: () {},
            ),
            const widgets.SizedBox(width: 4),
            GoogleIconButton(
              icon: const GoogleIcon(
                GoogleIcons.apps_rounded,
                size: 26,
              ),
              onPressed: () {},
            ),
            widgets.Container(
              padding: const widgets.EdgeInsets.all(2),
              margin: const widgets.EdgeInsets.symmetric(vertical: 11),
              decoration: const widgets.BoxDecoration(
                image: widgets.DecorationImage(
                  fit: widgets.BoxFit.cover,
                  image: widgets.AssetImage(
                    'packages/google_design_system/assets/images/google_vector.jpeg',
                  ),
                ),
                shape: widgets.BoxShape.circle,
              ),
              child: widgets.Container(
                padding: const widgets.EdgeInsets.all(2),
                decoration: const widgets.BoxDecoration(
                  color: GoogleLightColors.bodyColor,
                  shape: widgets.BoxShape.circle,
                ),
                child: GoogleAvatarButton(),
              ),
            ),
            const widgets.SizedBox(width: 4),
          ],
        );
}
