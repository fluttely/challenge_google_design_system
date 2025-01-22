import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' as widgets;
import 'package:google_app/google_app.dart';

export 'components/atoms/google_icon.dart';
export 'components/atoms/google_text.dart';
export 'components/components.dart';
export 'components/molecules/buttons/google_avatar_button.dart';
export 'components/molecules/buttons/google_elevated_button.dart';
export 'components/molecules/buttons/google_floating_action_button.dart';
export 'components/molecules/buttons/google_icon_button.dart';
export 'components/molecules/google_drive_body_tile.dart';
export 'components/molecules/google_mail_body_tile.dart';
export 'components/organisms/google_app_bar.dart';
export 'components/organisms/google_body.dart';
export 'components/organisms/google_left_side_bar.dart';
export 'components/templates/google_scaffold.dart';
export 'configuration/build_context_extension.dart';
export 'configuration/google_design_system.dart';
export 'theme/data/google_colors.dart';
export 'theme/data/google_icons.dart';
export 'theme/theme.dart';

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
              colorScheme: material.ColorScheme.fromSeed(
                seedColor: GoogleColors.seedColor,
              ),
              hoverColor: GoogleColors.disabledColor,
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
