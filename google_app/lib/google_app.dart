import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' as widgets;
import 'package:google_app/google_app.dart';

export 'configuration/build_context_extension.dart';
export 'configuration/google_design_system.dart';
export 'design/foundation/theme/core/google_icons.dart';
export 'design/foundation/theme/dark/google_dark_colors.dart';
export 'design/foundation/theme/light/google_light_colors.dart';
export 'design/foundation/theme/theme.dart';
export 'design/foundation/widgets/atoms/google_icon.dart';
export 'design/foundation/widgets/atoms/google_text.dart';
export 'design/foundation/widgets/molecules/buttons/google_avatar_button.dart';
export 'design/foundation/widgets/molecules/buttons/google_elevated_button.dart';
export 'design/foundation/widgets/molecules/buttons/google_floating_action_button.dart';
export 'design/foundation/widgets/molecules/buttons/google_icon_button.dart';
export 'design/foundation/widgets/molecules/google_drive_body_tile.dart';
export 'design/foundation/widgets/molecules/google_mail_body_tile.dart';
export 'design/foundation/widgets/organisms/google_app_bar.dart';
export 'design/foundation/widgets/organisms/google_body.dart';
export 'design/foundation/widgets/organisms/google_left_side_bar.dart';
export 'design/foundation/widgets/templates/google_scaffold.dart';
export 'design/foundation/widgets/widgets.dart';

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
                seedColor: GoogleLightColors.seedColor,
              ),
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
