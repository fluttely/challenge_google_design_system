import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleApp extends StatelessWidget {
  const GoogleApp({
    required this.title,
    required this.home,
    required this.themeData,
    super.key,
  });

  final String title;
  final Widget home;
  final GoogleThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return GoogleTheme(
      data: themeData,
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
          hoverColor: themeData.colors.disabledColor,
        ),
        home: home,
      ),
    );
  }
}
