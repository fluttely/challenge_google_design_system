// Button components
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

/// Factory class to create Google Design System buttons
class GoogleButtons {
  const GoogleButtons();

  /// Creates a Google Avatar Button
  ///
  /// Example:
  /// ```dart
  /// GoogleButtons.avatar()
  /// ```
  Widget avatar({
    Key? key,
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
  Widget elevated({
    required void Function()? onPressed,
    required Widget child,
    Key? key,
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
  Widget icon({
    required Widget icon,
    required void Function()? onPressed,
    Key? key,
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
  Widget floatingAction({
    required Widget child,
    required void Function()? onPressed,
    Key? key,
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
    Key? key,
    IconData? icon,
    Color? backgroundColor,
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
  List<Widget> allTypes({
    required void Function()? onPressed,
  }) {
    return [
      avatar(),
      elevated(
        onPressed: onPressed,
        child: const Text('Elevated'),
      ),
      icon(
        icon: const Icon(Icons.add),
        onPressed: onPressed,
      ),
      floatingAction(
        child: const Icon(Icons.add),
        onPressed: onPressed,
      ),
      floatingActionExtended(
        icon: Icons.add,
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
  Map<String, Widget> allTypesMap({
    required void Function()? onPressed,
  }) {
    return {
      'avatar': avatar(),
      'elevated': elevated(
        onPressed: onPressed,
        child: const Text('Elevated'),
      ),
      'icon': icon(
        icon: const Icon(Icons.add),
        onPressed: onPressed,
      ),
      'floatingAction': floatingAction(
        child: const Icon(Icons.add),
        onPressed: onPressed,
      ),
      'floatingActionExtended': floatingActionExtended(
        icon: Icons.add,
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
