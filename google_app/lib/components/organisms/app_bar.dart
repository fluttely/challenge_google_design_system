import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' as widgets;
import 'package:google_app/google_app.dart';

class AppBar extends material.AppBar {
  AppBar({
    super.key,
    required widgets.Widget image,
    required Text title,
  }) : super(
            toolbarHeight: 64,
            backgroundColor: Colors().canvasColor,
            leadingWidth: 216, // TODO
            titleSpacing: 0,
            leading: widgets.Row(
              children: [
                const widgets.SizedBox(width: 16),
                image,
                const widgets.SizedBox(width: 16),
                title,
              ],
            ),
            title: material.Container(
              color: Colors().backgroundColor,
              child: const widgets.Row(
                children: [Text('search field')],
              ),
            ),
            actions: [
              title,
              title,
              title,
            ]);
}
