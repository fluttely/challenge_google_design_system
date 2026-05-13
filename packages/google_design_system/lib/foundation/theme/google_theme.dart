import 'package:flutter/widgets.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleTheme extends InheritedWidget {
  final GoogleThemeData data;

  const GoogleTheme({
    super.key,
    required this.data,
    required super.child,
  });

  static GoogleThemeData of(BuildContext context) {
    final GoogleTheme? theme =
        context.dependOnInheritedWidgetOfExactType<GoogleTheme>();
    assert(theme != null, 'No GoogleTheme found in context');
    return theme!.data;
  }

  @override
  bool updateShouldNotify(GoogleTheme oldWidget) => data != oldWidget.data;
}
