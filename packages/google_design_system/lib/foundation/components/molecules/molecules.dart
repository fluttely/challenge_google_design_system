// Molecules - Combinations of atoms
import 'package:google_design_system/google_design_system.dart';

export 'buttons/buttons.dart';
export 'tiles/tiles.dart';

/// Factory class to access Google Design System molecules
class GoogleMolecules {
  const GoogleMolecules();

  /// Access to button components
  GoogleButtons get buttons => const GoogleButtons();

  /// Access to tile components
  GoogleTiles get tiles => const GoogleTiles();
}
