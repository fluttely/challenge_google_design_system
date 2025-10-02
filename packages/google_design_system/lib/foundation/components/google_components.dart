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

/// Helper class to access all Google Design System components
/// organized by Atomic Design hierarchy
class GoogleComponents {
  const GoogleComponents();

  /// Access to atom components (smallest building blocks)
  GoogleAtoms get atoms => const GoogleAtoms();

  /// Access to molecule components (combinations of atoms)
  GoogleMolecules get molecules => const GoogleMolecules();

  /// Access to organism components (complex UI components)
  GoogleOrganisms get organisms => const GoogleOrganisms();

  /// Access to template components (page-level layouts)
  GoogleTemplates get templates => const GoogleTemplates();
}
