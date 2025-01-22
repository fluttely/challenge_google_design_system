import 'package:flutter/material.dart';

abstract class GoogleAppBarTheme {
  static AppBarTheme data(ColorScheme colorScheme) {
    return AppBarTheme(
      iconTheme: IconThemeData(
        color: colorScheme.onSurfaceVariant,
      ),
      actionsIconTheme: IconThemeData(
        color: colorScheme.onSurfaceVariant,
      ),
      backgroundColor: colorScheme.surface,
      surfaceTintColor: colorScheme.surface,
      //colorScheme.surface,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 20,
        color: colorScheme.onSurfaceVariant,
      ),
      shadowColor: Colors.black87,
      scrolledUnderElevation: 4,
      toolbarHeight: 52,
    );
  }
}
