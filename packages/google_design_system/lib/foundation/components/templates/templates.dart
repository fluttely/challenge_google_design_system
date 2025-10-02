// Templates - Page-level layouts
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:google_design_system/google_design_system.dart';

/// Factory class to create Google Design System templates
class GoogleTemplates {
  const GoogleTemplates();

  /// Creates a Google Scaffold
  ///
  /// Example:
  /// ```dart
  /// GoogleTemplates.scaffold(
  ///   logo: Image.asset('logo.png'),
  ///   title: 'Drive',
  ///   barHintText: 'Search in Drive',
  ///   leftSideBar: GoogleLeftSideBar(...),
  ///   bodyTileList: [tile1, tile2],
  /// )
  /// ```
  static Widget scaffold({
    required Image logo,
    required String title,
    required String barHintText,
    required GoogleLeftSideBar leftSideBar,
    required List<Widget> bodyTileList,
    Key? key,
    bool haveHottomDivider = false,
  }) {
    return GoogleScaffold(
      key: key,
      logo: logo,
      title: title,
      barHintText: barHintText,
      leftSideBar: leftSideBar,
      bodyTileList: bodyTileList,
      haveHottomDivider: haveHottomDivider,
    );
  }

  /// Returns the list of available template type names
  static List<String> get availableTypes => [
        'scaffold',
      ];
}
