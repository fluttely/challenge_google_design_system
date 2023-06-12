library google_app;

import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' as widgets;
import 'package:google_app/google_app.dart';

export 'components/components.dart';
export 'configuration/configuration.dart';
export 'theme/theme.dart';

class GoogleApp extends widgets.InheritedWidget {
  final DesignSystem designSystem;

  GoogleApp({
    super.key,
    required String title,
    required widgets.Widget home,
  })  : designSystem = DesignSystem(),
        super(
          child: material.MaterialApp(
            key: key,
            debugShowCheckedModeBanner: false,
            title: title,
            theme: material.ThemeData(
              useMaterial3: true,
              colorScheme: material.ColorScheme.fromSeed(
                seedColor: Colors().seedColor,
              ),
            ),
            home: home,
          ),
        );

  static GoogleApp of(widgets.BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<GoogleApp>()
        as GoogleApp);
  }

  @override
  bool updateShouldNotify(GoogleApp oldWidget) {
    return designSystem != oldWidget.designSystem;
  }
}
