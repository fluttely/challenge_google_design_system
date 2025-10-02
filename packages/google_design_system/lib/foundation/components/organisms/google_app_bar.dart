import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleAppBar extends AppBar {
  GoogleAppBar({
    required Widget image,
    required String title,
    required String barHintText,
    bool haveHottomDivider = false,
    super.key,
  }) : super(
          toolbarHeight: 64,
          backgroundColor: GoogleLightColors.canvasColor,
          leadingWidth: 216,
          titleSpacing: 0,
          leading: Row(
            children: [
              const SizedBox(width: 16),
              image,
              const SizedBox(width: 8),
              GoogleText.titleLarge(title),
            ],
          ),
          title: Container(
            height: 48,
            margin: const EdgeInsets.only(
              left: 14,
            ),
            child: SearchAnchor.bar(
              viewElevation: 0,
              barElevation: WidgetStateProperty.all(0),
              barBackgroundColor: WidgetStateProperty.all(
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
            const SizedBox(width: 4),
            GoogleIconButton(
              icon: const GoogleIcon(
                GoogleIcons.help_outline_outlined,
                size: 26,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 4),
            GoogleIconButton(
              icon: const GoogleIcon(
                GoogleIcons.settings_outlined,
                size: 26,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 4),
            GoogleIconButton(
              icon: const GoogleIcon(
                GoogleIcons.apps_rounded,
                size: 26,
              ),
              onPressed: () {},
            ),
            Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.symmetric(vertical: 11),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/google_vector.jpeg',
                    package: 'google_design_system',
                  ),
                ),
                shape: BoxShape.circle,
              ),
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: GoogleLightColors.bodyColor,
                  shape: BoxShape.circle,
                ),
                child: GoogleAvatarButton(),
              ),
            ),
            const SizedBox(width: 4),
          ],
          bottom: haveHottomDivider
              ? const PreferredSize(
                  preferredSize: Size.fromHeight(1),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                )
              : null,
        );
}
