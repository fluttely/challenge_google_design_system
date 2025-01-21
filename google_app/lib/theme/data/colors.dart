import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' as widgets;

class ColorsUtils {
  /// Generic Colors
  static widgets.Color pink = material.Colors.pink;
  static widgets.Color black = material.Colors.black;
  static widgets.Color white = material.Colors.white;
  static widgets.Color green = material.Colors.green;
  static widgets.Color blue = material.Colors.blue;
  static widgets.Color orange = material.Colors.orange;
  static widgets.Color darkGrey800 = material.Colors.grey.shade800;
  static widgets.Color darkGrey700 = material.Colors.grey.shade700;
  static widgets.Color grey400 = material.Colors.grey.shade400;

  /// Theme Colors
  static widgets.Color backgroundColor = blue;
  static widgets.Color titleLargeColor = darkGrey800;
  static widgets.Color canvasColor = const widgets.Color(0xFFf6f9fc);
  static widgets.Color textColor = darkGrey800;
  static widgets.Color iconColor = darkGrey700;
  static widgets.Color lineColor = grey400;
  static widgets.Color bodyColor = white;
  static widgets.Color seedColor = const widgets.Color(0xFFc1e6fe);
  static widgets.Color disabledColor = const widgets.Color(0xFFe6e7ea);
  static widgets.Color searchAnchorBarColor = const widgets.Color(0xFFecf2fc);
}
