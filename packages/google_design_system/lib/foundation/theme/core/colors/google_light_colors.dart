import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleLightColors implements GoogleColors {
  const GoogleLightColors();

  /// Generic Colors
  @override
  Color get pink => Colors.pink;

  @override
  Color get black => Colors.black;

  @override
  Color get white => Colors.white;

  @override
  Color get green => Colors.green;

  @override
  Color get blue => Colors.blue;

  @override
  Color get orange => Colors.orange;

  @override
  Color get darkGrey800 =>
      Color.fromARGB(255, 66, 66, 66); // Colors.grey.shade800

  @override
  Color get darkGrey700 =>
      Color.fromARGB(255, 97, 97, 97); // Colors.grey.shade700

  @override
  Color get grey400 => Color.fromARGB(
        255,
        189,
        189,
        189,
      ); // Colors.grey.shade400

  /// Theme Colors
  @override
  Color get backgroundColor => blue;

  @override
  Color get titleLargeColor => darkGrey800;

  @override
  Color get canvasColor => Color(0xFFf6f9fc);

  @override
  Color get textColor => darkGrey800;

  @override
  Color get iconColor => darkGrey700;

  @override
  Color get lineColor => grey400;

  @override
  Color get bodyColor => white;

  @override
  Color get seedColor => Color(0xFFc1e6fe);

  @override
  Color get disabledColor => Color(0xFFe6e7ea);

  @override
  Color get searchAnchorBarColor => Color(0xFFecf2fc);
}
