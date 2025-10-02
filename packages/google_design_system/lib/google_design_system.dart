import 'package:google_design_system/google_design_system.dart';

export 'foundation/components/google_components.dart';
export 'foundation/theme/core/components/google_app_bar_theme.dart';
export 'foundation/theme/core/google_icons.dart';
export 'foundation/theme/dark/google_dark_colors.dart';
export 'foundation/theme/google_theme.dart';
export 'foundation/theme/light/google_light_colors.dart';

class GoogleDesignSystem {
  const GoogleDesignSystem();

  GoogleTheme get theme => const GoogleTheme();
  GoogleComponents get components => const GoogleComponents();
}
