// Organisms - Complex components
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:google_design_system/google_design_system.dart';

/// Factory class to create Google Design System organisms
class GoogleOrganisms {
  const GoogleOrganisms();

  /// Creates a Google App Bar
  ///
  /// Example:
  /// ```dart
  /// GoogleOrganisms.appBar(
  ///   image: Image.asset('logo.png'),
  ///   title: 'Drive',
  ///   barHintText: 'Search in Drive',
  /// )
  /// ```
  static Widget appBar({
    required Widget image,
    required String title,
    required String barHintText,
    Key? key,
    bool haveHottomDivider = false,
  }) {
    return GoogleAppBar(
      key: key,
      image: image,
      title: title,
      barHintText: barHintText,
      haveHottomDivider: haveHottomDivider,
    );
  }

  /// Creates a Google Body
  ///
  /// Example:
  /// ```dart
  /// GoogleOrganisms.body(
  ///   bodyTileList: [tile1, tile2],
  /// )
  /// ```
  static Widget body({
    required List<Widget> bodyTileList,
    Key? key,
  }) {
    return GoogleBody(
      key: key,
      bodyTileList: bodyTileList,
    );
  }

  /// Creates a Google Left Side Bar
  ///
  /// Example:
  /// ```dart
  /// GoogleOrganisms.leftSideBar(
  ///   floatingActionButton: GoogleButtons.floatingActionExtended(...),
  ///   leftSideBarTileList: menuItems,
  /// )
  /// ```
  static Widget leftSideBar({
    required GoogleFloatingActionButton floatingActionButton,
    required List<LeftSideBarTileModel> leftSideBarTileList,
    Key? key,
    GoogleLeftSideBarTileType tileType = GoogleLeftSideBarTileType.small,
  }) {
    return GoogleLeftSideBar(
      key: key,
      floatingActionButton: floatingActionButton,
      leftSideBarTileList: leftSideBarTileList,
      tileType: tileType,
    );
  }

  /// Returns a list of all available organism type names
  static List<String> get availableTypes => [
        'appBar',
        'body',
        'leftSideBar',
      ];
}
