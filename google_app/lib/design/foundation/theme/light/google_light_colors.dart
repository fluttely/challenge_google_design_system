import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' as widgets;

class GoogleLightColors {
  const GoogleLightColors();

  /// Generic Colors
  static const widgets.Color pink = material.Colors.pink;
  static const widgets.Color black = material.Colors.black;
  static const widgets.Color white = material.Colors.white;
  static const widgets.Color green = material.Colors.green;
  static const widgets.Color blue = material.Colors.blue;
  static const widgets.Color orange = material.Colors.orange;
  static const widgets.Color darkGrey800 =
      material.Color.fromARGB(255, 66, 66, 66); // material.Colors.grey.shade800
  static const widgets.Color darkGrey700 =
      material.Color.fromARGB(255, 97, 97, 97); // material.Colors.grey.shade700
  static const widgets.Color grey400 = material.Color.fromARGB(
    255,
    189,
    189,
    189,
  ); // material.Colors.grey.shade400

  /// Theme Colors
  static const widgets.Color backgroundColor = blue;
  static const widgets.Color titleLargeColor = darkGrey800;
  static const widgets.Color canvasColor = widgets.Color(0xFFf6f9fc);
  static const widgets.Color textColor = darkGrey800;
  static const widgets.Color iconColor = darkGrey700;
  static const widgets.Color lineColor = grey400;
  static const widgets.Color bodyColor = white;
  static const widgets.Color seedColor = widgets.Color(0xFFc1e6fe);
  static const widgets.Color disabledColor = widgets.Color(0xFFe6e7ea);
  static const widgets.Color searchAnchorBarColor = widgets.Color(0xFFecf2fc);
}
