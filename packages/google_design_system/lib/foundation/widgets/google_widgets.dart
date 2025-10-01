// Atomic Design System - Google Design
//
// This follows the Atomic Design methodology by Brad Frost:
// Atoms → Molecules → Organisms → Templates → Pages

import 'package:google_design_system/google_design_system.dart';

// Atoms - Basic building blocks
export 'atoms/atoms.dart';
// Molecules - Simple combinations of atoms
export 'molecules/molecules.dart';
// Organisms - Complex UI components
export 'organisms/organisms.dart';
// Templates - Page-level layouts
export 'templates/templates.dart';

/// Helper class to access Google Widgets
class GoogleWidgets {
  const GoogleWidgets();

  GoogleIcons get icons => const GoogleIcons();
}
