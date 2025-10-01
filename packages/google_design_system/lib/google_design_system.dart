import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' as widgets;
import 'package:google_design_system/google_design_system.dart';

export 'configuration/build_context_extension.dart';
export 'configuration/google_design_system.dart';
// Atomic Design System - Widgets
export 'foundation/components/google_components.dart';
export 'foundation/theme/core/components/google_app_bar_theme.dart';
export 'foundation/theme/core/google_icons.dart';
export 'foundation/theme/dark/google_dark_colors.dart';
export 'foundation/theme/google_theme.dart';
export 'foundation/theme/light/google_light_colors.dart';

class GoogleApp extends widgets.InheritedWidget {
  GoogleApp({
    required String title,
    required widgets.Widget home,
    super.key,
  })  : designSystem = const GoogleDesignSystem(),
        super(
          child: material.MaterialApp(
            key: key,
            debugShowCheckedModeBanner: false,
            title: title,
            theme: material.ThemeData(
              useMaterial3: true,
              // colorScheme: material.ColorScheme.fromSeed(
              //   seedColor: GoogleLightColors.seedColor,
              // ),
              // appBarTheme: GoogleAppBarTheme.data(),
              hoverColor: GoogleLightColors.disabledColor,
            ),
            home: home,
          ),
        );

  final GoogleDesignSystem designSystem;

  static GoogleApp of(widgets.BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GoogleApp>()!;
  }

  @override
  bool updateShouldNotify(GoogleApp oldWidget) {
    return designSystem != oldWidget.designSystem;
  }
}
