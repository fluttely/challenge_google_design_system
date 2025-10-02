// Atoms - Smallest building blocks
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

export 'google_icon.dart';
export 'google_text.dart';

/// Factory class to create Google Design System atoms
class GoogleAtoms {
  const GoogleAtoms();

  /// Creates a Google Icon
  ///
  /// Example:
  /// ```dart
  /// GoogleAtoms.icon(GoogleIcons.add)
  /// ```
  static Widget icon(
    IconData icon, {
    Key? key,
    double? size,
  }) {
    return GoogleIcon(
      icon,
      key: key,
      size: size,
    );
  }

  /// Creates a medium-sized Google Icon (20px)
  ///
  /// Example:
  /// ```dart
  /// GoogleAtoms.iconMedium(GoogleIcons.add)
  /// ```
  static Widget iconMedium(IconData icon) {
    return GoogleIcon.medium(icon);
  }

  /// Creates a large Google Icon (24px)
  ///
  /// Example:
  /// ```dart
  /// GoogleAtoms.iconLarge(GoogleIcons.add)
  /// ```
  static Widget iconLarge(IconData icon) {
    return GoogleIcon.large(icon);
  }

  /// Creates a Google Text
  ///
  /// Example:
  /// ```dart
  /// GoogleAtoms.text('Hello World')
  /// ```
  static Widget text(
    String data, {
    Key? key,
    Color? fontColor,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return GoogleText(
      data,
      key: key,
      fontColor: fontColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  /// Creates a large title Google Text
  ///
  /// Example:
  /// ```dart
  /// GoogleAtoms.textTitleLarge('Title')
  /// ```
  static Widget textTitleLarge(String data) {
    return GoogleText.titleLarge(data);
  }

  /// Returns a list of all available atom types for demo/testing purposes
  static List<Widget> allTypes() {
    return [
      icon(Icons.add),
      iconMedium(Icons.add),
      iconLarge(Icons.add),
      text('Sample Text'),
      textTitleLarge('Sample Title'),
    ];
  }

  /// Returns the list of available atom type names
  static List<String> get availableTypes => [
        'icon',
        'iconMedium',
        'iconLarge',
        'text',
        'textTitleLarge',
      ];
}
