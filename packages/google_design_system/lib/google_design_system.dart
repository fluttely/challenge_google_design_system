// ============================================================================
// GOOGLE DESIGN SYSTEM - Main Entry Point
// ============================================================================
// This file exports all components, themes, and utilities
// Organized by Atomic Design hierarchy
// ============================================================================

import 'package:google_design_system/foundation/components/google_components.dart';
import 'package:google_design_system/foundation/theme/google_theme.dart';

// ============================================================================
// FOUNDATION - COMPONENTS (Atomic Design Hierarchy)
// ============================================================================
// Atoms → Molecules → Organisms → Templates
export 'foundation/components/atoms/atoms.dart';
export 'foundation/components/atoms/google_icon.dart';
export 'foundation/components/atoms/google_text.dart';
export 'foundation/components/google_components.dart';
export 'foundation/components/molecules/buttons/buttons.dart';
export 'foundation/components/molecules/buttons/google_avatar_button.dart';
export 'foundation/components/molecules/buttons/google_elevated_button.dart';
export 'foundation/components/molecules/buttons/google_floating_action_button.dart';
export 'foundation/components/molecules/buttons/google_icon_button.dart';
export 'foundation/components/molecules/molecules.dart';
export 'foundation/components/molecules/tiles/google_drive_body_tile.dart';
export 'foundation/components/molecules/tiles/google_left_side_bar_tile.dart';
export 'foundation/components/molecules/tiles/google_mail_body_tile.dart';
export 'foundation/components/molecules/tiles/tiles.dart';
export 'foundation/components/organisms/google_app_bar.dart';
export 'foundation/components/organisms/google_body.dart';
export 'foundation/components/organisms/google_left_side_bar.dart';
export 'foundation/components/organisms/organisms.dart';
export 'foundation/components/templates/google_scaffold.dart';
export 'foundation/components/templates/templates.dart';
// ============================================================================
// FOUNDATION - THEME (Colors, Typography, Icons)
// ============================================================================
export 'foundation/theme/core/components/google_app_bar_theme.dart';
export 'foundation/theme/core/google_icons.dart';
export 'foundation/theme/dark/google_dark_colors.dart';
export 'foundation/theme/google_theme.dart';
export 'foundation/theme/light/google_light_colors.dart';

// ============================================================================
// DESIGN SYSTEM CLASS
// ============================================================================

/// Main Design System class providing access to theme and components
class GoogleDesignSystem {
  const GoogleDesignSystem();

  /// Access to theme configuration (colors, typography, etc)
  GoogleTheme get theme => const GoogleTheme();

  /// Access to all UI components organized by Atomic Design
  GoogleComponents get components => const GoogleComponents();
}
