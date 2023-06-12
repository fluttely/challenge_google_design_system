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
          backgroundColor: Colors().canvasColor,
          leadingWidth: 216, // TODO
          titleSpacing: 0,
          // leading: widgets.Row( // TODO: PUT IT BACK
          //   children: [
          //     const widgets.SizedBox(width: 16),
          //     image,
          //     const widgets.SizedBox(width: 16),
          //     Text.titleLarge(title),
          //   ],
          // ),
          title: material.SearchAnchor.bar(
            viewElevation: 0,
            barElevation: material.MaterialStateProperty.all(0),
            barBackgroundColor: material.MaterialStateProperty.all(
              Colors().searchAnchorBarColor,
            ),
            barHintText: 'Search in $title',
            viewBackgroundColor: Colors().bodyColor,
            suggestionsBuilder: (context, controller) {
              return List.generate(
                6,
                (index) => Text(index.toString()),
              );
            },
          ),
          actions: [],
        );
}
