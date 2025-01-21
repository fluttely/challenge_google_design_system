import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' as widgets;
import 'package:google_app/google_app.dart';

class AppBar extends material.AppBar {
  AppBar({
    super.key,
    required widgets.Widget image,
    required String title,
  }) : super(
          toolbarHeight: 64,
          backgroundColor: ColorsUtils.canvasColor,
          leadingWidth: 216,
          titleSpacing: 0,
          leading: widgets.Row(
            children: [
              const widgets.SizedBox(width: 16),
              image,
              const widgets.SizedBox(width: 8),
              Text.titleLarge(title),
            ],
          ),
          title: material.Container(
            height: 48,
            margin: const material.EdgeInsets.only(
              left: 14,
            ),
            child: material.SearchAnchor.bar(
              viewElevation: 0,
              barElevation: material.MaterialStateProperty.all(0),
              barBackgroundColor: material.MaterialStateProperty.all(
                ColorsUtils.searchAnchorBarColor,
              ),
              barHintText: 'Search in $title',
              viewBackgroundColor: ColorsUtils.bodyColor,
              suggestionsBuilder: (context, controller) {
                return List.generate(
                  6,
                  (index) => Text(index.toString()),
                );
              },
            ),
          ),
          actions: [
            const material.SizedBox(width: 4),
            material.IconButton(
              icon: const material.Icon(
                material.Icons.help_outline_outlined,
                size: 26,
              ),
              onPressed: () {},
            ),
            const material.SizedBox(width: 4),
            material.IconButton(
              icon: const material.Icon(
                material.Icons.settings_outlined,
                size: 26,
              ),
              onPressed: () {},
            ),
            const material.SizedBox(width: 4),
            material.IconButton(
              icon: const material.Icon(
                material.Icons.apps_rounded,
                size: 26,
              ),
              onPressed: () {},
            ),
            material.Container(
              padding: const material.EdgeInsets.all(2),
              margin: const material.EdgeInsets.symmetric(vertical: 11),
              decoration: const widgets.BoxDecoration(
                image: material.DecorationImage(
                  fit: material.BoxFit.cover,
                  image: material.AssetImage(
                    'assets/images/google_vector.jpeg',
                  ),
                ),
                shape: material.BoxShape.circle,
              ),
              child: material.Container(
                padding: const material.EdgeInsets.all(2),
                decoration: widgets.BoxDecoration(
                  color: ColorsUtils.bodyColor,
                  shape: material.BoxShape.circle,
                ),
                child: material.FloatingActionButton(
                  backgroundColor: ColorsUtils.canvasColor,
                  shape: const material.CircleBorder(),
                  elevation: 0,
                  hoverElevation: 3,
                  onPressed: () {},
                  child: material.CircleAvatar(
                    backgroundColor: ColorsUtils.canvasColor,
                    backgroundImage: const material.AssetImage(
                      'assets/images/avatar_picture.png',
                    ),
                  ),
                ),
              ),
            ),
            const material.SizedBox(width: 4),
          ],
        );
}
