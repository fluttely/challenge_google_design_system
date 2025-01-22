import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' as widgets;
import 'package:google_app/google_app.dart';

class GoogleAppBar extends material.AppBar {
  GoogleAppBar({
    super.key,
    required widgets.Widget image,
    required String title,
  }) : super(
          toolbarHeight: 64,
          backgroundColor: GoogleColors.canvasColor,
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
                GoogleColors.searchAnchorBarColor,
              ),
              barHintText: 'Search in $title',
              viewBackgroundColor: GoogleColors.bodyColor,
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
              icon:  const GoogleIcon(
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
                    'assets/images/google_vector.jpeg',
                  ),
                ),
                shape: widgets.BoxShape.circle,
              ),
              child: widgets.Container(
                padding: const widgets.EdgeInsets.all(2),
                decoration: const widgets.BoxDecoration(
                  color: GoogleColors.bodyColor,
                  shape: widgets.BoxShape.circle,
                ),
                child: GoogleAvatarButton(),
              ),
            ),
            const widgets.SizedBox(width: 4),
          ],
        );
}
