import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' as widgets;

class Colors {
  /// Generic Colors
  static widgets.Color pink = material.Colors.pink;
  static widgets.Color black = material.Colors.black;
  static widgets.Color white = material.Colors.white;
  static widgets.Color green = material.Colors.green;
  static widgets.Color blue = material.Colors.blue;
  static widgets.Color orange = material.Colors.orange;
  static widgets.Color darkGrey = material.Colors.grey.shade800;

  /// Theme Colors
  widgets.Color backgroundColor = blue;
  widgets.Color titleLargeColor = darkGrey;
  widgets.Color canvasColor = const widgets.Color(0xFFf6f9fc);
  widgets.Color textColor = darkGrey;
  widgets.Color iconColor = darkGrey;
  widgets.Color bodyColor = white;
  widgets.Color seedColor = const widgets.Color(0xFFc1e6fe);
  widgets.Color disabledColor = const widgets.Color(0xFFe6e7ea);
  widgets.Color searchAnchorBarColor = const widgets.Color(0xFFecf2fc);
}
