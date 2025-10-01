// Button components
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart' as widgets;
import 'package:google_design_system/google_design_system.dart';

export 'google_avatar_button.dart';
export 'google_elevated_button.dart';
export 'google_floating_action_button.dart';
export 'google_icon_button.dart';

/// Factory class to create Google Design System buttons
class GoogleButtons {
  const GoogleButtons();

  /// Creates a Google Avatar Button
  ///
  /// Example:
  /// ```dart
  /// GoogleButtons.avatar()
  /// ```
  widgets.Widget avatar({
    widgets.Key? key,
  }) {
    return GoogleAvatarButton(
      key: key,
    );
  }

  /// Creates a Google Elevated Button
  ///
  /// Example:
  /// ```dart
  /// GoogleButtons.elevated(
  ///   onPressed: () {},
  ///   child: Text('Click me'),
  /// )
  /// ```
  widgets.Widget elevated({
    required void Function()? onPressed,
    required widgets.Widget child,
    widgets.Key? key,
    double? elevation,
  }) {
    return GoogleElevatedButton(
      key: key,
      onPressed: onPressed,
      elevation: elevation,
      child: child,
    );
  }

  /// Creates a Google Icon Button
  ///
  /// Example:
  /// ```dart
  /// GoogleButtons.icon(
  ///   icon: Icon(GoogleIcons.add),
  ///   onPressed: () {},
  /// )
  /// ```
  widgets.Widget icon({
    required widgets.Widget icon,
    required void Function()? onPressed,
    widgets.Key? key,
  }) {
    return GoogleIconButton(
      key: key,
      icon: icon,
      onPressed: onPressed,
    );
  }

  /// Creates a Google Floating Action Button
  ///
  /// Example:
  /// ```dart
  /// GoogleButtons.floatingAction(
  ///   child: Icon(GoogleIcons.add),
  ///   onPressed: () {},
  /// )
  /// ```
  widgets.Widget floatingAction({
    required widgets.Widget child,
    required void Function()? onPressed,
    widgets.Key? key,
  }) {
    return GoogleFloatingActionButton(
      key: key,
      onPressed: onPressed,
      child: child,
    );
  }

  /// Creates a Google Floating Action Button Extended
  ///
  /// Example:
  /// ```dart
  /// GoogleButtons.floatingActionExtended(
  ///   icon: GoogleIcons.add,
  ///   label: 'New',
  ///   onPressed: () {},
  /// )
  /// ```
  GoogleFloatingActionButton floatingActionExtended({
    required String label,
    required void Function()? onPressed,
    widgets.Key? key,
    material.IconData? icon,
    material.Color? backgroundColor,
    double? elevation,
  }) {
    return GoogleFloatingActionButton.extended(
      key: key,
      icon: icon,
      label: label,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      elevation: elevation,
    );
  }

  /// Returns a list of all available button types for demo/testing purposes
  ///
  /// Example:
  /// ```dart
  /// final allButtons = GoogleButtons.allTypes(onPressed: () {});
  /// ```
  List<widgets.Widget> allTypes({
    required void Function()? onPressed,
  }) {
    return [
      avatar(),
      elevated(
        onPressed: onPressed,
        child: const widgets.Text('Elevated'),
      ),
      icon(
        icon: const widgets.Icon(material.Icons.add),
        onPressed: onPressed,
      ),
      floatingAction(
        child: const widgets.Icon(material.Icons.add),
        onPressed: onPressed,
      ),
      floatingActionExtended(
        icon: material.Icons.add,
        label: 'Extended',
        onPressed: onPressed,
      ),
    ];
  }

  /// Returns a map of button names to button widgets for demo/testing purposes
  ///
  /// Example:
  /// ```dart
  /// final buttonMap = GoogleButtons.allTypesMap(onPressed: () {});
  /// buttonMap['avatar'] // Returns GoogleAvatarButton
  /// ```
  Map<String, widgets.Widget> allTypesMap({
    required void Function()? onPressed,
  }) {
    return {
      'avatar': avatar(),
      'elevated': elevated(
        onPressed: onPressed,
        child: const widgets.Text('Elevated'),
      ),
      'icon': icon(
        icon: const widgets.Icon(material.Icons.add),
        onPressed: onPressed,
      ),
      'floatingAction': floatingAction(
        child: const widgets.Icon(material.Icons.add),
        onPressed: onPressed,
      ),
      'floatingActionExtended': floatingActionExtended(
        icon: material.Icons.add,
        label: 'Extended',
        onPressed: onPressed,
      ),
    };
  }

  /// Returns the list of available button type names
  List<String> get availableTypes => [
        'avatar',
        'elevated',
        'icon',
        'floatingAction',
        'floatingActionExtended',
      ];
}
