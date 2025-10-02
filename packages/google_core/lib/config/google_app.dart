import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleApp extends InheritedWidget {
  GoogleApp({
    required String title,
    required Widget home,
    super.key,
  })  : designSystem = const GoogleDesignSystem(),
        super(
          child: MaterialApp(
            key: key,
            debugShowCheckedModeBanner: false,
            title: title,
            theme: ThemeData(
              useMaterial3: true,
              // colorScheme: ColorScheme.fromSeed(
              //   seedColor: GoogleLightColors.seedColor,
              // ),
              // appBarTheme: GoogleAppBarTheme.data(),
              hoverColor: GoogleLightColors.disabledColor,
            ),
            home: home,
          ),
        );

  final GoogleDesignSystem designSystem;

  static GoogleApp of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GoogleApp>()!;
  }

  @override
  bool updateShouldNotify(GoogleApp oldWidget) {
    return designSystem != oldWidget.designSystem;
  }
}
